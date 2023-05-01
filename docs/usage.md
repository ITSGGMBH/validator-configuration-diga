# Beispiele zur Nutzung

Die folgenden Beispiele gehen von einer selbstgebauten Konfiguration aus (Siehe [Development](./development.md)).
Falls Sie eine fertige Konfiguration heruntergeladen haben, müssen Sie selbst die externen Abhängigkeiten bereitstellen
und alle Pfadangaben entsprechend ändern.

### Anfragen zum Einlösen des Freischaltcodes

```bash
$ java -jar lib/validationtool-1.5.0-standalone.jar -h -s build/config/scenarios.xml -r build/config/ -o build/test src/test/resources/dfc0/ANF.xml
KoSIT Validator version 1.5.0
Loading scenarios from  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/scenarios.xml
Using repository  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/

Loaded "DiGA-Konfiguration für den KoSIT Validator" by ITSG GmbH from 2023-04-28
The following scenarios are available:
  * DiGA Freischaltcode (DFC0), Version 2.0.0
  * DiGA Freischaltcode (DFC0), Version 3.0.0
  * DiGA-Rechnung (DRE0-Anfrage) 2023-04-21 basierend auf EN16931 CIUS XRechnung 2.2.0 (UN/CEFACT CII 100.D16B)
  * Prüfbericht für DiGA-Rechnung (DRE0-Antwort)
  * DiGA-Verzeichnis, Version 2.1.0 (DVZ0)
  * Kostenträger Mappingverzeichnis (DRE0-MVZ), Version 2.0.0
  * Kostenträger Mappingverzeichnis (DRE0-MVZ), Version 3.0.0


Processing of 1 objects started
Processing of 1 objects completed in 153ms
Results:
----------------------------------------------------------------------------------------------------------------
|File                                                        |Schema |Schematron|Acceptance|Error/Description   |
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    Y     |ACCEPTABLE|                    |
|tion-diga/src/test/resources/dfc0/ANF.xml                   |       |          |          |                    |
----------------------------------------------------------------------------------------------------------------
Acceptable:  1  Rejected:  0


##############################
#   Validation successful!   #
##############################
```

In diesem Beispiel wird das XML-Dokument akzeptiert.

### Antworten zum Einlösen des Freischaltcodes

```bash
$ java -jar lib/validationtool-*-standalone.jar -h -s build/config/scenarios.xml -o build/test src/test/resources/dfc0/{ANT,FEH}*.xml 
KoSIT Validator version 1.5.0
Loading scenarios from  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/scenarios.xml
Using repository  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/

Loaded "DiGA-Konfiguration für den KoSIT Validator" by ITSG GmbH from 2023-04-28
The following scenarios are available:
  * DiGA Freischaltcode (DFC0), Version 2.0.0
  * DiGA Freischaltcode (DFC0), Version 3.0.0
  * DiGA-Rechnung (DRE0-Anfrage) 2023-04-21 basierend auf EN16931 CIUS XRechnung 2.2.0 (UN/CEFACT CII 100.D16B)
  * Prüfbericht für DiGA-Rechnung (DRE0-Antwort)
  * DiGA-Verzeichnis, Version 2.1.0 (DVZ0)
  * Kostenträger Mappingverzeichnis (DRE0-MVZ), Version 2.0.0
  * Kostenträger Mappingverzeichnis (DRE0-MVZ), Version 3.0.0


Processing of 7 objects started
Processing of 7 objects completed in 261ms
Results:
----------------------------------------------------------------------------------------------------------------
|File                                                        |Schema |Schematron|Acceptance|Error/Description   |
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    Y     |ACCEPTABLE|                    |
|tion-diga/src/test/resources/dfc0/ANT.xml                   |       |          |          |                    |
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    Y     |ACCEPTABLE|                    |
|tion-diga/src/test/resources/dfc0/FEH-100.xml               |       |          |          |                    |
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    Y     |ACCEPTABLE|                    |
|tion-diga/src/test/resources/dfc0/FEH-101.xml               |       |          |          |                    |
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    Y     |ACCEPTABLE|                    |
|tion-diga/src/test/resources/dfc0/FEH-102.xml               |       |          |          |                    |
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    Y     |ACCEPTABLE|                    |
|tion-diga/src/test/resources/dfc0/FEH-200.xml               |       |          |          |                    |
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    Y     |ACCEPTABLE|                    |
|tion-diga/src/test/resources/dfc0/FEH-201.xml               |       |          |          |                    |
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    Y     |ACCEPTABLE|                    |
|tion-diga/src/test/resources/dfc0/FEH-202.xml               |       |          |          |                    |
----------------------------------------------------------------------------------------------------------------
Acceptable:  7  Rejected:  0


##############################
#   Validation successful!   #
##############################
```

Auch in diesem Beispiel werden alle XML-Dokumente akzeptiert, inklusive der Antwort und der Fehlerinformationen.

### Einreichen von DiGA-Rechnungen

#### Validierung gegen DiGA-Rechnung

```bash
$ java -jar lib/validationtool-*-standalone.jar -h -s build/config/scenarios.xml -o build/test src/test/resources/dre0/my_invoice_*.xml
KoSIT Validator version 1.5.0
Loading scenarios from  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/scenarios.xml
Using repository  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/

Loaded "DiGA-Konfiguration für den KoSIT Validator" by ITSG GmbH from 2023-04-28
The following scenarios are available:
  * DiGA Freischaltcode (DFC0), Version 2.0.0
  * DiGA Freischaltcode (DFC0), Version 3.0.0
  * DiGA-Rechnung (DRE0-Anfrage) 2023-04-21 basierend auf EN16931 CIUS XRechnung 2.2.0 (UN/CEFACT CII 100.D16B)
  * Prüfbericht für DiGA-Rechnung (DRE0-Antwort)
  * DiGA-Verzeichnis, Version 2.1.0 (DVZ0)
  * Kostenträger Mappingverzeichnis (DRE0-MVZ), Version 2.0.0
  * Kostenträger Mappingverzeichnis (DRE0-MVZ), Version 3.0.0


Processing of 2 objects started
Processing of 2 objects completed in 314ms
Results:
--------------------------------------------------------------------------------------------------------------------------------------------------------
|File                                                        |Schema |Schematron|Acceptance|Error/Description                                           |
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    N     |  REJECT  |[BR-53]-If the VAT accounting currency code (BT-6) is presen|
|tion-diga/src/test/resources/dre0/my_invoice_1.xml          |       |          |          |t, then the Invoice total VAT amount in accounting currency |
|                                                            |       |          |          |(BT-111) shall be provided.;[CII-SR-087] - IndividualTrad...|
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    Y     |ACCEPTABLE|                                                            |
|tion-diga/src/test/resources/dre0/my_invoice_2.xml          |       |          |          |                                                            |
--------------------------------------------------------------------------------------------------------------------------------------------------------
Acceptable:  1  Rejected:  1


##############################
#     Validation failed!     #
##############################
```

Eine der beiden Rechnungen wird abgelehnt, da sie nicht die Anforderungen an eine DiGA-Rechnung erfüllt.

### Prüfberichte zur DiGA-Rechnung

Auch der im vorigen Schritt erzeugte Prüfbericht lässt sich wiederum validieren:

```bash
$ java -jar lib/validationtool-*-standalone.jar -h -s build/config/scenarios.xml -o build/test build/test/xrechnung-1.2-falsch-report.xml
KoSIT Validator version 1.5.0
Loading scenarios from  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/scenarios.xml
Using repository  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/

Loaded "DiGA-Konfiguration für den KoSIT Validator" by ITSG GmbH from 2023-04-28
The following scenarios are available:
  * DiGA Freischaltcode (DFC0), Version 2.0.0
  * DiGA Freischaltcode (DFC0), Version 3.0.0
  * DiGA-Rechnung (DRE0-Anfrage) 2023-04-21 basierend auf EN16931 CIUS XRechnung 2.2.0 (UN/CEFACT CII 100.D16B)
  * Prüfbericht für DiGA-Rechnung (DRE0-Antwort)
  * DiGA-Verzeichnis, Version 2.1.0 (DVZ0)
  * Kostenträger Mappingverzeichnis (DRE0-MVZ), Version 2.0.0
  * Kostenträger Mappingverzeichnis (DRE0-MVZ), Version 3.0.0


Processing of 1 objects started
Processing of 1 objects completed in 323ms
Results:
----------------------------------------------------------------------------------------------------------------
|File                                                        |Schema |Schematron|Acceptance|Error/Description   |
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    Y     |ACCEPTABLE|                    |
|tion-diga/build/test/dfc0/report/ANT-report.xml             |       |          |          |                    |
----------------------------------------------------------------------------------------------------------------
Acceptable:  1  Rejected:  0


##############################
#   Validation successful!   #
##############################
```

### Stammdaten aus dem DiGA-Verzeichnis

```bash
$ java -jar lib/validationtool-*-standalone.jar -h -s build/config/scenarios.xml -o build/test src/test/resources/dvz0/diga-verzeichnis.xml
KoSIT Validator version 1.5.0
Loading scenarios from  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/scenarios.xml
Using repository  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/

Loaded "DiGA-Konfiguration für den KoSIT Validator" by ITSG GmbH from 2023-04-28
The following scenarios are available:
  * DiGA Freischaltcode (DFC0), Version 2.0.0
  * DiGA Freischaltcode (DFC0), Version 3.0.0
  * DiGA-Rechnung (DRE0-Anfrage) 2023-04-21 basierend auf EN16931 CIUS XRechnung 2.2.0 (UN/CEFACT CII 100.D16B)
  * Prüfbericht für DiGA-Rechnung (DRE0-Antwort)
  * DiGA-Verzeichnis, Version 2.1.0 (DVZ0)
  * Kostenträger Mappingverzeichnis (DRE0-MVZ), Version 2.0.0
  * Kostenträger Mappingverzeichnis (DRE0-MVZ), Version 3.0.0


Processing of 1 objects started
Processing of 1 objects completed in 341ms
Results:
----------------------------------------------------------------------------------------------------------------
|File                                                        |Schema |Schematron|Acceptance|Error/Description   |
|/C:/src/git/validator-configuration-diga/validator-config...|   Y   |    Y     |ACCEPTABLE|                    |
|tion-diga/src/test/resources/dvz0/diga-verzeichnis.xml      |       |          |          |                    |
----------------------------------------------------------------------------------------------------------------
Acceptable:  1  Rejected:  0


##############################
#   Validation successful!   #
##############################
```
