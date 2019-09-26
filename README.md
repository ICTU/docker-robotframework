# ICTU-robotframework

## Intro
Dockerized version of robotframework including selenium libraries. This repository includes a compose file which will:
* Execute tests specified in `TESTS_FOLDER` variable
* Store results in `RESULTS_FOLDER` variable

Supported browsers are chrome and firefox which can be specified from your testcase. See `example-test.robot`.

## How to use

See testcase in `example` directory. To execute this testcase execute the following command:

```
TESTS_FOLDER=<path_to_folder_containing_tests> RESULTS_FOLDER=<path_to_folder_to_store_results> ./run-tests.sh
```