[![de](https://img.shields.io/badge/lang-de-green.svg)](https://github.com/ITSGGMBH/validator-configuration-diga/blob/master/README.md)
[![en](https://img.shields.io/badge/lang-en-green.svg)](https://github.com/ITSGGMBH/validator-configuration-diga/blob/master/README.en.md)
[![License](https://img.shields.io/badge/License-Apache_2.0-orange.svg)](https://opensource.org/licenses/Apache-2.0)
[![XSLT CI](https://github.com/bitmarck-service/validator-configuration-diga/actions/workflows/xslt-ci.yml/badge.svg)](https://github.com/bitmarck-service/validator-configuration-diga/actions/workflows/xslt-ci.yml)<br/>
[![XRechnung 2.2](https://img.shields.io/badge/XRechnung-2.2-blue.svg)](https://github.com/itplr-kosit/validator-configuration-xrechnung/tree/release-2022-11-15)
[![Saxon-HE](https://img.shields.io/badge/Saxon--HE-10.6-blue.svg)](https://www.saxonica.com/html/documentation10/about/gettingstarted/gettingstartedjava.html)
[![SchXslt](https://img.shields.io/badge/SchXslt-1.8.5-blue.svg)](https://github.com/schxslt/schxslt/tree/v1.8.5)
[![KoSIT Validator](https://img.shields.io/badge/KoSIT%20Validator-1.5.0-blue.svg)](https://github.com/itplr-kosit/validator/tree/v1.5.0)


# DiGA-Konfiguration für den KoSIT Validator

Dieses Repository beinhaltet eine Konfiguration für den [KoSIT Validator](https://github.com/itplr-kosit/validator), die
für die Validierung aller Nachrichten geeignet ist die im Rahmen des DiGA-Fachverfahren ausgetauscht werden.

Geprüft wird die Konformität zu Cross Industry Invoice, EN16931, XRechnung und DiGA.

Weitere technische Informationen finden Sie unter [Development](docs/development.md) für die Weiterentwicklung und [Usage](docs/usage.md) für die Nutzung.

## Leistungsmerkmale

+ Validierung von Anfragen und Antworten für das Einlösen von Freischaltcodes gemäß Verfahrenskennzeichen EDFC0 und
  TDFC0.
+ Validierung von Anfragen und Antworten für das Einreichen von DiGA-Rechnungen auf Basis von EN16931 CIUS XRechnung 2.2 und 2.0, jeweils in Ausprägung UN/CEFACT CII 100.D16B gemäß Verfahrenskennzeichen EDRE0 und TDRE0.
+ Validierung von Stammdaten zu DiGAs und DiGA-Herstellern gemäß Verfahrenskennzeichen EDVZ0. 
+ Validierung von Stammdaten zum Krankenkassen Mappingverzeichnis.

## Referenzen

+ [GKV-Datenaustausch Dokumentationen zu DFC0](https://www.gkv-datenaustausch.de/leistungserbringer/digitale_gesundheitsanwendungen/digitale_gesundheitsanwendungen.jsp)
+ [DiGA Krankenkassenverzeichnis](https://kkv.gkv-diga.de/)
+ [DiGA Verzeichnis](https://diga.bfarm.de/de)
+ XRechnung [Spezifikation](https://xeinkauf.de/xrechnung/) und [KoSIT Validator Konfiguration](https://github.com/itplr-kosit/validator-configuration-xrechnung)
+ [KoSIT Validator](https://github.com/itplr-kosit/validator)


## Abgrenzung

+ Die genutzte Schematron-Validierung von EN-16931 kennt die erweiterten `schemeId` Codes von XRechnung nicht und gleichzeitig kann über den aktuellen KoSIT Validator ein "error" nur als "information" umgewandelt werden ohne das Endergebnis mit anzupassen. Die Schematron Prüfung würde entsprechend als ungültig ausgegeben werden.
  
  Aus diesem Grund wird übergangsweise intern die `schemeId` Liste erweitert. Dieser Workaround sollte frühest möglich korrigiert werden.
+ Die Reports und Fehlertexte werden nur in deutscher Sprache erstellt.
+ Diese Version definiert Abrechnungen im Format XRechnung 2.0 als akzeptabel. Die Schematron Teilprüfung wird durch die EN16931 Regeln jedoch als "nicht valide" eingestuft.
