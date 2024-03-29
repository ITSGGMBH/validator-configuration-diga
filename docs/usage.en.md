# Usual use cases

The following examples are based on a local development environment. (see [Development](./development.en.md)).
For the the pre-built release you have to provide the proper paths and dependencies.

### Request for an activation code

```bash
$ java -jar lib/validationtool-1.5.0-standalone.jar -h -s build/config/scenarios.xml -r build/config/ -o build/test src/test/resources/dfc0/ANF.xml
KoSIT Validator version 1.5.0
Loading scenarios from  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/scenarios.xml
Using repository  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/

Loaded "DiGA-Konfiguration f�r den KoSIT Validator" by ITSG GmbH from 2023-04-28
The following scenarios are available:
  * DiGA Freischaltcode (DFC0), Version 2.0.0
  * DiGA Freischaltcode (DFC0), Version 3.0.0
  * DiGA-Rechnung (DRE0-Anfrage) 2023-04-21 basierend auf EN16931 CIUS XRechnung 2.2.0 (UN/CEFACT CII 100.D16B)
  * Pr�fbericht f�r DiGA-Rechnung (DRE0-Antwort)
  * DiGA-Verzeichnis, Version 2.1.0 (DVZ0)
  * Kostentr�ger Mappingverzeichnis (DRE0-MVZ), Version 2.0.0
  * Kostentr�ger Mappingverzeichnis (DRE0-MVZ), Version 3.0.0


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

In this example the XML document is valid.

### Response for an activation code request

```bash
$ java -jar lib/validationtool-*-standalone.jar -h -s build/config/scenarios.xml -o build/test src/test/resources/dfc0/{ANT,FEH}*.xml 
KoSIT Validator version 1.5.0
Loading scenarios from  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/scenarios.xml
Using repository  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/

Loaded "DiGA-Konfiguration f�r den KoSIT Validator" by ITSG GmbH from 2023-04-28
The following scenarios are available:
  * DiGA Freischaltcode (DFC0), Version 2.0.0
  * DiGA Freischaltcode (DFC0), Version 3.0.0
  * DiGA-Rechnung (DRE0-Anfrage) 2023-04-21 basierend auf EN16931 CIUS XRechnung 2.2.0 (UN/CEFACT CII 100.D16B)
  * Pr�fbericht f�r DiGA-Rechnung (DRE0-Antwort)
  * DiGA-Verzeichnis, Version 2.1.0 (DVZ0)
  * Kostentr�ger Mappingverzeichnis (DRE0-MVZ), Version 2.0.0
  * Kostentr�ger Mappingverzeichnis (DRE0-MVZ), Version 3.0.0


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

In this example all documents are valid - both the success and error files.

### Handling DiGA invoices

#### Validating a DiGA invoice

```bash
$ java -jar lib/validationtool-*-standalone.jar -h -s build/config/scenarios.xml -o build/test src/test/resources/dre0/my_invoice_*.xml
KoSIT Validator version 1.5.0
Loading scenarios from  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/scenarios.xml
Using repository  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/

Loaded "DiGA-Konfiguration f�r den KoSIT Validator" by ITSG GmbH from 2023-04-28
The following scenarios are available:
  * DiGA Freischaltcode (DFC0), Version 2.0.0
  * DiGA Freischaltcode (DFC0), Version 3.0.0
  * DiGA-Rechnung (DRE0-Anfrage) 2023-04-21 basierend auf EN16931 CIUS XRechnung 2.2.0 (UN/CEFACT CII 100.D16B)
  * Pr�fbericht f�r DiGA-Rechnung (DRE0-Antwort)
  * DiGA-Verzeichnis, Version 2.1.0 (DVZ0)
  * Kostentr�ger Mappingverzeichnis (DRE0-MVZ), Version 2.0.0
  * Kostentr�ger Mappingverzeichnis (DRE0-MVZ), Version 3.0.0


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

One invoice has been rejected as it does not meet the rules and requirements of a DiGA invoice.

### Validating a DiGA invoice validation report

Reports generated by the KoSIT Validator can be validated, too.

```bash
$ java -jar lib/validationtool-*-standalone.jar -h -s build/config/scenarios.xml -o build/test build/test/xrechnung-1.2-falsch-report.xml
KoSIT Validator version 1.5.0
Loading scenarios from  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/scenarios.xml
Using repository  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/

Loaded "DiGA-Konfiguration f�r den KoSIT Validator" by ITSG GmbH from 2023-04-28
The following scenarios are available:
  * DiGA Freischaltcode (DFC0), Version 2.0.0
  * DiGA Freischaltcode (DFC0), Version 3.0.0
  * DiGA-Rechnung (DRE0-Anfrage) 2023-04-21 basierend auf EN16931 CIUS XRechnung 2.2.0 (UN/CEFACT CII 100.D16B)
  * Pr�fbericht f�r DiGA-Rechnung (DRE0-Antwort)
  * DiGA-Verzeichnis, Version 2.1.0 (DVZ0)
  * Kostentr�ger Mappingverzeichnis (DRE0-MVZ), Version 2.0.0
  * Kostentr�ger Mappingverzeichnis (DRE0-MVZ), Version 3.0.0


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

### Validating the list data of the "DiGA-Verzeichnis"

```bash
$ java -jar lib/validationtool-*-standalone.jar -h -s build/config/scenarios.xml -o build/test src/test/resources/dvz0/diga-verzeichnis.xml
KoSIT Validator version 1.5.0
Loading scenarios from  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/scenarios.xml
Using repository  file:///C:/src/git/validator-configuration-diga/validator-configuration-diga/build/config/

Loaded "DiGA-Konfiguration f�r den KoSIT Validator" by ITSG GmbH from 2023-04-28
The following scenarios are available:
  * DiGA Freischaltcode (DFC0), Version 2.0.0
  * DiGA Freischaltcode (DFC0), Version 3.0.0
  * DiGA-Rechnung (DRE0-Anfrage) 2023-04-21 basierend auf EN16931 CIUS XRechnung 2.2.0 (UN/CEFACT CII 100.D16B)
  * Pr�fbericht f�r DiGA-Rechnung (DRE0-Antwort)
  * DiGA-Verzeichnis, Version 2.1.0 (DVZ0)
  * Kostentr�ger Mappingverzeichnis (DRE0-MVZ), Version 2.0.0
  * Kostentr�ger Mappingverzeichnis (DRE0-MVZ), Version 3.0.0


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
