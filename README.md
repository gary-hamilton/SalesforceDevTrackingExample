# SalesforceDevTrackingExample
Sample Force.com Migration Project for Jenkins that allows tracking changes of sandbox metadata

Gary Hamilton <ghamilton@acumensolutions.com>
Version 1.0

Sample project for retrieving Salesforce metadata changes using Jenkings:

Running Apache Ant in job workspace executes retrieveMetadata task.
Run supplying sf.serverurl, sf.username and sf.password in properties file specified by -Dsf.org=<folder name>. sf.org defaults to "dev" so Ant reads dev.properties file and stores metadata in ./dev folder.

Jenkins will call ant with parameter for sf.org: -Dsf.org=dev


