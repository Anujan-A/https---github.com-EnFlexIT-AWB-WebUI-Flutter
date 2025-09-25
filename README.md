# Bachelorarbeit – Vergleich von Lösungsansätzen zur Entwicklung von plattformübergreifenden Benutzerschnittstellen für verteilte, dezentrale Energiemanagementsysteme

Flutter Benutzeroberfläche für Agent.Workbench API

Im Rahmen meiner **Bachelorarbeit** habe ich eine **Benutzeroberfläche mit Flutter** entwickelt.  
Die App kommuniziert mit der **Agent.Workbench API** über automatisch generierten **API-Client-Code**,  
welcher aus der **OpenAPI-Dokumentation** (Swagger) erstellt wurde.  

## Hintergrund
**Agent.Workbench** ist ein Eclipse/OSGi-basiertes Application-Toolkit und Framework,  
das auf der Agentenplattform **JADE** aufbaut.  
Es unterstützt die Entwicklung agentenbasierter, endnutzerorientierter RCP-Anwendungen,  
die es auch **Nicht-Programmierern ermöglichen sollen, Agententechnologien**  
für ihre eigenen Zwecke einzusetzen.  

## Umsetzung
- **Framework:** Flutter  
- **API-Integration:** OpenAPI Generator (Swagger → Dart API-Client)  
- **Architektur:** Trennung von UI und API-Logik 
- **Ziel:** Intuitive Benutzeroberfläche für die Interaktion mit Agent.Workbench  

## Features
- Nutzung von Swagger/OpenAPI zur automatischen Generierung der API-Methoden  
- Flutter-UI für die Kommunikation mit der Agent.Workbench-Plattform  
- Abstraktion der API-Aufrufe über generierten Dart-Code  
- Grundlage für die Weiterentwicklung zu einer produktiven Anwendung  

## Fazit
Dieses Projekt zeigt, wie **moderne Cross-Plattform-Frameworks (Flutter)**  
mit bestehenden **Java-basierten Agentenframeworks (JADE / OSGi)** kombiniert werden können,  
um **zugängliche Benutzerschnittstellen** zu schaffen.  
