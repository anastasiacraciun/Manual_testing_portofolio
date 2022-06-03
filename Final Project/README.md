# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application. 

Application under test: https://opensource-demo.orangehrmlive.com

API Documentation: https://orangehrm.github.io/orangehrm-api-doc/

**The final project will be split into 2 sections: [Testing section](https://github.com/anastasiacraciun/Manual_testing_portofolio/blob/main/Final%20Project/README.md#1-testing-section) and [SQL section](https://github.com/anastasiacraciun/Manual_testing_portofolio/blob/main/Final%20Project/README.md#2-sql-section).**

Tools used:Jira, Zephyr Squad, Postman, MySQL Workbench.

# Functional specifications
![Capture_1](https://user-images.githubusercontent.com/103954649/171039487-7d2549a2-0806-413e-a5ce-a3804b522934.PNG)

![work_experience](https://user-images.githubusercontent.com/103954649/171039441-aaa655e2-085d-4a5a-b7db-618ebdeedaca.PNG)

# 1 Testing section

## 1.1 Test Planning

The Test Plan is designed to describe all details of testing for the 'Work Experience' module from the OrangeHRM application. 

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the personnel responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan

#### 1.1.1 Roles assigned to the project and persons allocated
* Project manager - Tudor Amariei
* Product owner - Maria Barcari
* Software developer - Diana Raducu
* QA Engineer - Craciun Anastasia

#### 1.1.2 Entry criteria defined
* functional specifications are defined
* roles needed for the project are allocated
* initial project risks were detected and mitigated

#### 1.1.3 Exit criteria defined
* number of unresolved bugs is insignificant or they have low priority
* all tests have been executed
* all resolved bugs have been re-tested and approved by the QA team
* deadline was reached
* no detected major risk remained un-mitigated
* exploratory regression testing must be performed on the My Info module, which includes the Work Eperience section

#### 1.1.4 Test scope

* __Tests in scope:__ All the feature of Work Experience section which were defined in software requirement specs need to be tested: functional testing, GUI testing and API testing
* __Tests not in scope:__  performance testing, integrations of the dependents module with other modules, compatibility testing with multiple browsers

#### 1.1.5 Risks detected

* Project risks:  lack of experience of the QA team, short deadline of Zephyr Squad trial, unavailability of test environment
* Product risks: validation constraints on the fields might be too restrictive to the end-user

#### 1.1.6 Evaluating entry criteria

The entry criterias defined in the Test Planning phase have been achieved and the test process can continue. 

## 1.2 Test Monitoring and Control

Various periodic reports were generated to reflect the current status of the testing process, in case of major problems control measures could be taken. The following status report was generated after 73% of the test cases were executed, on 20th of June 2022:

![pie](https://user-images.githubusercontent.com/103954649/171379376-eb937000-dd08-4036-9a2a-cbcefd1b2e38.PNG)

## 1.3 Test Analysis

The testing process will be executed based on the above requirements for the Work Experience module. The following test conditions were found:

* Enter data only for mandatory fields and check that the work experience is created/updated
* Enter data for all available fields and check that the work experience is created/updated
* Leave mandatory fields empty and check that the work experience cannot be created/updated
* View work experience details and check they are correct
* View all work experiences in a list
* Check all validation constraints for the fields
* Delete the work experience previously added and check if it can be removed.

## 1.4 Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases 
are:

**Test cases:**

![tes_cases](https://user-images.githubusercontent.com/103954649/171224230-4dab0de5-2c91-40f4-9b92-d3f5a2a145cf.PNG)


The test cases with steps can be viewed here: [test_cases_work_experience](https://github.com/anastasiacraciun/Manual_testing_portofolio/blob/main/Final%20Project/Test%20Steps.pdf)

For the Work Experience API, the following checklist was generated: [API_test_checklist](https://view.officeapps.live.com/op/view.aspx?src=https%3A%2F%2Fraw.githubusercontent.com%2Fanastasiacraciun%2FManual_testing_portofolio%2Fmain%2FFinal%2520Project%2FAPI_test_checklist.xlsx&wdOrigin=BROWSELINK)

## 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

* Testing environment is up and running: https://opensource-demo.orangehrmlive.com/
* Access to the testing environment is given: Username : Admin | Password : admin123
* Cycle summary was created
* Test cases were added to the cycle summary
* Postman collection with the work experience API methods was created
* Authorization token was created for accessing the API

## 1.6 Test Execution

* Test cases are executed on the created test Cycle summary: [cycle_summary_execution.pdf](https://github.com/anastasiacraciun/Manual_testing_portofolio/blob/main/Final%20Project/Test%20Execution.pdf)

* Bugs have been created based on the failed tests. The complete bug reports can be found here: [created_bugs.pdf](https://github.com/anastasiacraciun/Manual_testing_portofolio/blob/main/Final%20Project/created%20bugs.pdf)

    *  The date in the "To" field can be typed in
    *  The date in the "From" field can be typed in
    *  The input "Company" accepts more than 55 characters length maximum
    *  Can not add a comment that is 300 characters long
    *  The date format in the "To" field is yyyy-mm-dd instead of dd/mm/yyyy
    *  A user is able to add the same work experience many times
    *  The input "Job Title" accepts more than 55 characters length maximum
    *  The date format in the "From" field is yyyy-mm-dd instead of dd/mm/yyyy
    *  "Job Title" field accepts all type of characters. Only alphabetical characters are supposed to be accepted
    *  The user can select a date in the future in the "From" field
    *  The user can select a date in the future in the "To" field
    *  The "Job Title" accepts less than 2 characters
    *  The "Company" field accepts less than 2 characters
* API tests are executed based on the checklist. The collection used can be found here: [JSON file with the collection of requests created for the Work Experience API](https://github.com/anastasiacraciun/Manual_testing_portofolio/blob/main/Final%20Project/Anastasia%20Final%20Project%20(AFP).postman_collection.json)

* Full regression testing is needed after the bugs are fixed

## 1.7 Test Completion

* Exit criteria was evaluated and passed
* The traceability matrix was generated and can be found here: [Traceability_matrix.csv](https://view.officeapps.live.com/op/view.aspx?src=https%3A%2F%2Fraw.githubusercontent.com%2Fanastasiacraciun%2FManual_testing_portofolio%2Fmain%2FFinal%2520Project%2FForward%2520Traceability_2_6_2022.xlsx&wdOrigin=BROWSELINK)
* Test execution chart was generated, the final report shows that a number 14 tests have failed of a total of 30
* A number of 30 test cases were planned for execution and all of them were executed
* A number of 14 total bugs were found, from which the priority is: 3 are high, 9 are medium and 2 are low

#### Test Execution Chart

![final Chart](https://user-images.githubusercontent.com/103954649/171666281-811af79d-a8f2-4565-bb41-2701ffcc1bc8.PNG)

# 2 SQL section
A database named 'OrangeHRM_WorkExperience' was created and 3 tables named 'work_experience', 'Date' and 'Details' with all the columns needed to save data per specifications. Performed different queries inside the sql file: [work_experience.sql](https://github.com/anastasiacraciun/Manual_testing_portofolio/blob/main/Final%20Project/AFP_sql.sql)
