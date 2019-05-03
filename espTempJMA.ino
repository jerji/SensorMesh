//************************************************************
// this is a simple example that uses the painlessMesh library to
// setup a node that logs to a central logging node
// The logServer example shows how to configure the central logging nodes
//************************************************************
#include <painlessMesh.h>
#include <DHT.h>

#define   MESH_PREFIX     "Sensors"
#define   MESH_PASSWORD   "W0WS0S3CuR3"
#define   MESH_PORT       5555
#define   DHTPIN          5
#define   DHTTYPE         DHT22
#define   ID              2

Scheduler     userScheduler; // to control your personal task
painlessMesh  mesh;
DHT dht(DHTPIN, DHTTYPE);

// Prototype
void receivedCallback( uint32_t from, String &msg );
void readTemp();
size_t logServerId = 0;
float tempD = 0;
float humiD = 0;
float heatD = 0;

// Send message to the logServer every 10 seconds
Task logDHT (10000, TASK_FOREVER, []() {
    readTemp();
    DynamicJsonBuffer jsonBuffer;
    JsonObject& msg = jsonBuffer.createObject();
    msg["topic"] = "sensor";
    msg["temperature"] = tempD;
    msg["humidity"] = humiD;
    msg["index"] = heatD;

    String str;
    msg.printTo(str);
    if (logServerId == 0) // If we don't know the logServer yet
        mesh.sendBroadcast(str);
    else
        mesh.sendSingle(logServerId, str);

    // log to serial
    msg.printTo(Serial);
    Serial.printf("\n");
});

void setup() {
  Serial.begin(115200);
  dht.begin();
  mesh.setDebugMsgTypes( ERROR | STARTUP | CONNECTION );  // set before init() so that you can see startup messages

  mesh.init( MESH_PREFIX, MESH_PASSWORD, &userScheduler, MESH_PORT, WIFI_AP_STA, 6 );
  mesh.onReceive(&receivedCallback);
  Serial.print("ID: " + ID);
  // Add the task to the your scheduler
  userScheduler.addTask(logDHT);
  logDHT.enable();
}

void loop() {
    userScheduler.execute(); // it will run mesh scheduler as well
    mesh.update();
}

void receivedCallback( uint32_t from, String &msg ) {
  Serial.printf("logClient: Received from %u msg=%s\n", from, msg.c_str());

  // Saving logServer
  DynamicJsonBuffer jsonBuffer;
  JsonObject& root = jsonBuffer.parseObject(msg);
  if (root.containsKey("topic")) {
      if (String("logServer").equals(root["topic"].as<String>())) {
          // check for on: true or false
          logServerId = root["nodeId"];
          Serial.printf("logServer detected!!!\n");
      }
      Serial.printf("Handled from %u msg=%s\n", from, msg.c_str());
  }
}
void readTemp(){

  tempD = dht.readTemperature();
  humiD = dht.readHumidity();
  heatD = dht.computeHeatIndex(tempD,humiD,0);

}
