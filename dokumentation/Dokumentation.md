# Steps um Flutter in VS Code zu beutzen:

- [Flutter](https://docs.flutter.dev/get-started/install/windows) bundle (Windows) installieren.
  > Folgende Hinsweise dabei beachten:
  >
  > - Installieren Sie Flutter nicht in einem Verzeichnis wie C:\Program Files\, das erhöhte Rechte erfordert.
  > - Installieren Sie Flutter nicht in einem Pfad, der Sonderzeichen oder Leerzeichen enthält.
- [Android Studio](https://developer.android.com/studio) installieren.
  > Android Studio wird benötigt um ein Emulator zu haben, der eine Vorschau ermöglicht.
- - **Alternative:** Eigenes Android-Gerät nutzen:
    > Um Ihre Flutter-App auf einem Android-Gerät auszuführen und zu testen, benötigen Sie ein Android-Gerät mit Android 5.0 (API Level 21) oder höher.<br>
    > Aktivieren Sie die Entwickleroptionen und das USB-Debugging auf Ihrem Gerät. Detaillierte Anweisungen finden Sie in der Android-Dokumentation.<br>
    > Nur für Windows: Installieren Sie den Google USB-Treiber.<br>
    > Schließen Sie Ihr Telefon mit einem USB-Kabel an Ihren Computer an. Wenn Sie auf Ihrem Gerät dazu aufgefordert werden, autorisieren Sie Ihren Computer<br>
    > für den Zugriff auf Ihr Gerät.<br>
    > Führen Sie im Terminal den Befehl flutter devices aus, um zu überprüfen, ob Flutter Ihr angeschlossenes Android-Gerät erkennt.<br>
    > Standardmäßig verwendet Flutter die Version des Android SDK, auf der Ihr adb-Tool basiert. Wenn Sie möchten, dass Flutter eine andere Installation<br>
    > des Android-SDKs verwendet, müssen Sie die Umgebungsvariable ANDROID_SDK_ROOT auf dieses Installationsverzeichnis setzen.

- Aktualisieren Sie Ihren Pfad:

  > Wenn Sie Flutter-Befehle in der normalen Windows-Konsole ausführen möchten, führen Sie folgende Schritte aus, um Flutter zur Umgebungsvariablen PATH hinzuzufügen:
  >
  > - Geben Sie in der Start-Suchleiste 'env' ein und wählen Sie "Umgebungsvariablen für dieses Konto bearbeiten".<br>
  > - Prüfen Sie unter Benutzervariablen, ob es einen Eintrag namens Path gibt:<br>
  > - Wenn der Eintrag vorhanden ist, gehen Sie bearbeiten und fügen den vollständigen Pfad zu flutter\bin hinzu, der zuvor an einem von Ihnen gwählten Ort installiert wurde.<br>
  > - Wenn der Eintrag nicht vorhanden ist, erstellen Sie eine neue Benutzervariable namens Path mit dem vollständigen Pfad zu flutter\bin als Wert.<br>

- Als nächstes Flutter doctor- Befehl ausführen:
  > - Öffnen Sie die Windows-Eingabeaufforderung (CMD), indem Sie "cmd" in die WIndowssuchleiste eingeben und dann auf Eingabeaufforderung öffnen.<br>
  > - Dort führen Sie folgenden Befehl aus: Flutter doctor<br>
  > - Flutter doctor ist ein Analyse Tool, um zu schauen ob man Flutter auf dem Gerät nutzen kann oder eventuell andere Programme noch installieren muss,<br>
  >   damit Flutter einsatzbereit ist.
  > - Es folgt eine Liste markiert mit einem Hacken oder einem Kreuz. Die Kreuze zeigen die Punkte, die noch installiert werden müssen.<br>

# Um development server zu starten und Debugging:

- Zunächst Emulator öffnen oder eigenes Android-Gerät anschließen.
- In VS-Code auf der linken Leiste auf "Run and Debug" klicken oder CTRL+Shift+D.
  > Flutter verbindet sich automatisch mit dem Emulator oder dem Gerät.<br>
  > Zu dem kommt ein Pop-up, mit der man "Hot Reaload" Funktion nutzen kann.

# Neues Projekt erstellen:

- Starten Sie Visual Studio Code und öffnen Sie die Befehlspalette (mit F1 oder Strg+Umschalt+P oder Umschalt+Cmd+P). Beginnen Sie mit der Eingabe von "flutter new".<br>
  Wählen Sie den Befehl Flutter: Neues Projekt.
- Wählen Sie als Nächstes Anwendung und dann einen Ordner, in dem Sie Ihr Projekt erstellen möchten.

# Packages installieren:

1. Finden Sie das gewünschte Package:
   Der erste Schritt besteht darin, ein geeignetes Package zu finden. Der offizielle Ort dafür ist der [Pub Dev](https://pub.dev) - das ist das<br>
   Repository für Flutter und Dart Packages.

2. Fügen Sie das Package zur pubspec.yaml Datei hinzu:
   Wenn Sie ein Package gefunden haben, das Sie verwenden möchten, finden Sie auf der rechten Seite eine Installationsanleitung.<br>
   Kopieren Sie den Namen und die Version des Packages und fügen Sie es in Ihre pubspec.yaml Datei unter dependencies ein.

3. Installieren Sie das Package:
   Nachdem Sie das Package zur pubspec.yaml Datei hinzugefügt haben, öffnen Sie das Terminal oder die Kommandozeile und navigieren Sie zu Ihrem Projektordner.<br>
   Führen Sie den folgenden Befehl aus: flutter pub get<br>

   > Dieser Befehl aktualisiert Ihre Projekt-Dependencies und installiert das neue Package.

4. Verwenden Sie das Package in Ihrem Code:
   Jetzt können Sie das Package in Ihrem Code verwenden. Importieren Sie es an der Spitze Ihrer Dart-Datei mit: import 'package:package_name/package_name.dart';

# Projekt Dateien Erläuterung:

- Ordner "Screens" wurde erstellt und beinhaltet alle Screens der App.
- Ordner "dokumentation wurde erstellt und beinhaltet alle Dokumentationen.
- Ordner "assets" und Unterordner "icons" wurde erstellt und erhält Bilder, Icons etc.
- Ordner "models" wurde erstellt und soll OpenApi Dateien beinhaltetn.
- Ordner "lib" wurde vorgegeben und enthält die Main.dart.
- Ordner "api" wurde erstellt und soll die von "open_api.dart" generierte Dateien beinhalten.
- Ordner ".idea" wurde vorgegeben und beinhaltet Metadaten über Ihren Arbeitsbereich wie Einstellungen, Ausführungskonfigurationen usw.
- Ordner "android" wurde vorgegeben und enthält Dateien und Ordner, die für die Ausführung der Anwendung auf einem Android-Betriebssystem erforderlich sind.
- Ordner "ios" wurde vorgegeben und enthält Dateien und Ordner, die für die Ausführung der Anwendung auf einem IOS-Betriebssystem erforderlich sind.
- Ordner "build" wurde vorgegeben und enthält Artefakte und Dateien, die während des Kompiliervorgangs generiert werden.
- Ordner "linux" wurde vorgegeben und enthält notwendige Dateien und Konfigurationen, um die App auf einem Linux-Desktop zu bauen und auszuführen.
- Ordner "macos" wurde vorgegeben und enthält den Code und die Konfigurationen, die für die Erstellung einer Desktop-Anwendung für macOS erforderlich sind.
- Ordner "test" wurde vorgegeben und soll alle Unit-Tests und Widget-Tests beinhalten, die Sie für Ihre Anwendung schreiben.
- Ordner "web" wurde vorgegeben und enthält alle spezifischen Dateien und Assets, die für das Erstellen einer Webversion der App benötigt werden.
- Ordner "windows" wurde vorgegeben und enthält den plattformspezifischen Code und die Ressourcen, die benötigt werden, um die App als native Windows-Anwendung<br>
  zu kompilieren und auszuführen.
- Datei "pubspec.yaml" wurde vorgegeben und beinhaltet alle Packages und wird genuztz um Packages zu installieren.
- Datei ".flutter-plugins" wurde vorgegeben und enthält Informationen zu Plugins, die im aktuellen Projekt verwendet werden und wo sich der native Code dieser Plugins befindet.
- Datei "analysis_options.yaml" wurde vorgegeben und enthält Regeln und Einstellungen für den Dart-Analyzer. Der Dart-Analyzer prüft Ihren Code auf Fehler, Warnungen und Hinweise,<br> um sicherzustellen, dass er den Dart-Stil- und Qualitätsanforderungen entspricht.
- Datei "flutter_application_1.iml" wurde vorgegeben, ist IDE-spezifisch und enthält Informationen über das Modul, zu dem sie gehört, wie den Modultyp, den Build-Pfad und die<br> Abhängigkeiten.
- Datei "pubspec.lock" wurde vorgegeben und speichert die exakten Versionen von Abhängigkeiten (Packages) speichert, die in einem bestimmten Projekt verwendet werden. <br>
  Es gewährleistet, dass alle Entwickler und alle Deployment-Umgebungen dieselben Abhängigkeitsversionen verwenden.
