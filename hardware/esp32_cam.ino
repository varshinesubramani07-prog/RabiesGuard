#include <WiFi.h>

const char* WIFI_SSID = "YOUR_WIFI_NAME";
const char* WIFI_PASSWORD = "YOUR_WIFI_PASSWORD";

#define PIR_PIN 13

void setup()
{
    Serial.begin(115200);

    pinMode(PIR_PIN, INPUT);

    Serial.println("RabiesGuard ESP32-CAM");
    Serial.println("---------------------");

    WiFi.begin(WIFI_SSID, WIFI_PASSWORD);

    Serial.print("Connecting to WiFi");

    while (WiFi.status() != WL_CONNECTED)
    {
        delay(500);
        Serial.print(".");
    }

    Serial.println();
    Serial.println("WiFi Connected");

    Serial.print("IP Address: ");
    Serial.println(WiFi.localIP());
}


void loop()
{
    int motion = digitalRead(PIR_PIN);

    if (motion == HIGH)
    {
        Serial.println("Motion detected!");
        Serial.println("Camera node activated");
        Serial.println("Sending detection data...");
    }
    else
    {
        Serial.println("No movement");
    }

    delay(2000);
}