[![de](https://img.shields.io/badge/lang-de-green.svg)](./README.md)
[![en](https://img.shields.io/badge/lang-en-green.svg)](./README.en.md)
[![License](https://img.shields.io/badge/License-Apache_2.0-orange.svg)](https://opensource.org/licenses/Apache-2.0)
[![XSLT CI](https://github.com/bitmarck-service/validator-configuration-diga/actions/workflows/xslt-ci.yml/badge.svg)](https://github.com/bitmarck-service/validator-configuration-diga/actions/workflows/xslt-ci.yml)<br/>
[![XRechnung 2.2](https://img.shields.io/badge/XRechnung-2.2-blue.svg)](https://github.com/itplr-kosit/validator-configuration-xrechnung/tree/release-2022-11-15)
[![Saxon-HE](https://img.shields.io/badge/Saxon--HE-10.6-blue.svg)](https://www.saxonica.com/html/documentation10/about/gettingstarted/gettingstartedjava.html)
[![SchXslt](https://img.shields.io/badge/SchXslt-1.8.5-blue.svg)](https://github.com/schxslt/schxslt/tree/v1.8.5)
[![KoSIT Validator](https://img.shields.io/badge/KoSIT%20Validator-1.5.0-blue.svg)](https://github.com/itplr-kosit/validator/tree/v1.5.0)


# DiGA-Configuration for KoSIT Validator

A [KoSIT Validator](https://github.com/itplr-kosit/validator) configuration for validating DiGA XML data.

The configuration validates a file for Cross Industry Invoice, EN16931, XRechnung and DiGA.

Please see [Development](docs/development.en.md) for more information on development and [Usage](docs/usage.en.md) for usage.

## Features

+ Validating request and response of communication standard EDFC0 and TDFC0.
+ Validating request and response of DiGA invoices based on EN16931 CIUS XRechnung 2.2 and 2.0, notably UN/CEFACT CII 100.D16B according to EDRE0 and TDRE0.
+ Validating DiGA and DiGA creator data according to EDVZ0.
+ Validating data of the "Krankenkassen Mappingverzeichnis".

## References

+ [GKV-Datenaustausch documentation for DFC0](https://www.gkv-datenaustausch.de/leistungserbringer/digitale_gesundheitsanwendungen/digitale_gesundheitsanwendungen.jsp)
+ [DiGA Krankenkassenverzeichnis](https://kkv.gkv-diga.de/)
+ [DiGA Verzeichnis](https://diga.bfarm.de/de)
+ XRechnung [specification](https://xeinkauf.de/xrechnung/) and [the configuration for KoSIT Validator](https://github.com/itplr-kosit/validator-configuration-xrechnung)
+ [KoSIT Validator](https://github.com/itplr-kosit/validator)


## Limitations

+ The Schematron validation of EN-16931 does not know about the extended `schemeId` codes defined in XRechnung. Therefore the validation in KoSIT Validator will fail. Rules in XRechnung override the result to be of severity "information" resulting in an "acceptable" document but the schematron validation will still be listed as "N" (invalid).
  
  A workaround has been implemented to add the DiGA specific `schemeId` codes ("XR01", "XR02", "XR03") to the EN-16931 validation. This workaround shall be fixed as soon as possible.
+ Reports and error messages will be in German language.
+ This version defines XRechnung 2.0 formatted files to be acceptable. However, the EN16931 sub-validation will be shown as "not valid".
