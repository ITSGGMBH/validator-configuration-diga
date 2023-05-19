# Working on and building the DiGA configuration for the KoSIT Validator

The build process implemented in the repository's Apache Ant file `build.xml` creates a zip file of the configuration and handles all dependency downloads if neccessary.

## Requirements

+ Java Runtime Environment, Version 1.8 or later. 
+ [Apache Ant](https://ant.apache.org) (developed with version 1.10.9; other versions have not been tested)

## Building the configuration

A pre-built configuration can be obtained from 
[XSLT CI](https://github.com/ITSGGMBH/validator-configuration-diga/actions?query=workflow%3A%22XSLT+CI%22)
built by the GitHub action.
The configuration can be built with the Apache Ant target `build`.

```bat
    ant build
```

The result will be placed in the folder `build`.

## Dependencies

Dependencies will be downloaded by the builds process.

+ XRechnung Validation 2022-11-15
+ Saxon HE 10.6
+ KoSIT XML Validator 1.4.2 (for testing)
+ SchXslt 1.8.5

## Ant Targets

The following Ant targets are available:

* `clean` Deletes all files in the folder `build`.
* `lib-clean` Deletes all files in the folder `lib`. (implicit call of `clean`)
* `build` Downloads dependencies if needed and creates a zip file of the configuration.
* `test` Runs all tests with the most recent configuration. (implicit call of `build`)
* `runtest` Runs a specific test group. The parameter `test.group` should be set to the name of one of the folders of `src/test/resources`. (implicit call of `build`)
