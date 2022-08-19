Environment Setting
Operational system
Windows 10, Windows Server 2012 R2, Windows Server 2012, Windows 8, Windows 8.1, Windows Server 2016, Windows Server 2019, Windows 11

installers
MySQL Community: (package\Installer\mysql-installer-community-8.0.29.0)
MySQL Workbench 8.0 CE: (package\Installer\mysql-workbench-community-8.0.29-winx64)
Java (JRE 1.0.0_291): (package\Installer\JavaSetup8u331)
Pentaho Data Integration 9: (package\Installer\pdi-ce-9.2.0.0-290)
Power BI Desktop: (package\Installer\PBIDesktopSetup_x64)


MySQL Simplified Setup
We created a dump to facilitate the environment configuration process. Import the dump located in package\SQL\dump_database.sql into your MySQL. It will create the schema and import the data from some datasets.

Generating results from a Dataset
Prerequisites: MySQL Community, MySQL Workbench, Pentaho Data Integration, Java JRE
Open MySQL and run the code create_schema.sql which is located in the package\SQL directory. This step only needs to be performed once.
Create the tables for the new dataset that will be imported, executing the code package\SQL\create_table.sql and replacing the dates that are in the code with the date of the sample that will be loaded.
Start Pentaho Data Integration (package\ Installer\pdi-ce-9.2.0.0-290\data-integration\Kitchen.bat) and open the Job (Package\Files\Kettle\load_dataset\Job.kjb) that will import the Dataset and generation of result files.

Viewing and Exporting Results
Prerequisites: Power BI Desktop.
To view the results open the file located package\Files\PowerBI\Asymmetry.pbix.
Within Power BI it is possible to visualize, filter and export the results from the Result Table.