# SalesforceDevTrackingExample
Sample Force.com Migration Project for Jenkins that allows tracking changes of developer/sandbox metadata

Gary Hamilton <ghamilton@acumensolutions.com>
Version 1.1

* Create Jenkins project
  * Set Source Code Management to Git
  * Set repository URL to this project
  * Leave credentials blank, this is a public repo
* Run build 
  * Git project will be downloaded to job workspace
* Set parameters in dev.properties 
  * sf.password = your password + security token
  * sf.username = your username
  * metadata.directory = login url (test.salesforce.com for sandboxes, login.salesforce.com for production and developer orgs)
* Modify job
  * Set Source Code Management to None 
  * Add Build Step
    * Invoke Ant
    * Leave Targets blank or set Salesforce parameters
      * -Dsf.serverurl=test.salesforce.com -Dsf.username=<username> -Dsf.password=<password + security token>
  * Set schedule if desired
  * Build Now to test configuration
* Enhance job as needed
  * Add additional job steps
    * Set sf.org to prefix for properties file: -Dsf.org=QA 
    * Set metadata.directory to folder for backup
    * Add build step to run shell script, archive_metadata.sh commits to local git repo

