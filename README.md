

Smart Ward-Level Dog Monitoring & Rabies Risk Alert System

RabiesGuard is a smart healthcare and public-safety system designed to monitor stray dogs, track vaccination and sterilisation records, report dog-bite incidents, and identify high-risk wards.

The system connects **AI-based dog detection, RFID/QR-based dog identification, citizen bite reporting, municipal vaccination records, and risk analysis** into a single platform.

Objectives:

* Monitor stray-dog populations at ward level.
* Track dog vaccination and sterilisation status.
* Allow citizens to report dog-bite incidents.
* Provide quick first-aid and PEP guidance after a bite.
* Identify wards with low vaccination coverage.
* Help municipal teams prioritize Animal Birth Control (ABC) interventions.
* Send reminders for scheduled PEP doses.


AI Dog Detection:

ESP32-CAM-based monitoring nodes capture dog activity, while an AI model such as YOLO detects and counts dogs.

Dog Identification:

Each dog can be associated with an **RFID microchip or QR collar** containing vaccination and sterilisation information.

Citizen Bite Reporting:

Citizens can report dog-bite incidents with details such as location, date, and dog information.

 Ward Risk Analysis:

The system calculates a ward-level risk score using factors such as:

* Bite reports
* Unvaccinated dog percentage
* Dog density
* Suspected/flagged dogs

 PEP Reminders:

The system generates reminders for the PEP schedule after a reported bite:

* Day 0
* Day 3
* Day 7
* Day 14

### 6. Municipal Alerts

High-risk and low-vaccination wards can be highlighted so municipal teams can prioritize vaccination and ABC activities.

Technologies Used:

* Python
* YOLO
* OpenCV
* Flask / REST API
* SQL Database
* ESP32-CAM
* PIR Sensor
* RFID
* GPS
* GSM/Wi-Fi


How It Works:


ESP32-CAM / Sensors
        ↓
AI Dog Detection
        ↓
Dog Identification
(RFID / QR)
        ↓
Central Database
        ↓
Risk Analysis
        ↓
Municipal Dashboard
        ↓
Alerts & ABC Prioritisation

Expected Impact:

RabiesGuard aims to:

* Improve visibility of dog vaccination coverage.
* Identify high-risk wards faster.
* Improve citizen access to bite-response information.
* Support timely vaccination and sterilisation drives.
* Improve coordination between citizen reports and municipal response.
* Contribute to India's goal of eliminating dog-mediated rabies by 2030.


Project:

RabiesGuard — Smart India Hackathon

A technology-based approach to connecting **dog-side monitoring with human-side bite response** for improved rabies-risk management.
