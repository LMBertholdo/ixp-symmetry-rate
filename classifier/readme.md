# This code implements the verfploter datasets classification

### Dataset input files
* The Verfploter dataset (eg. IXP-Asymmetry-24_SITE-br-gru_PINGER-us-mia_DRAIN-nl-ens#ipv4,gru,ens_2022-05-02-20h59m.csv.gz)
* The compiled hitlist routing table for each IXP (eg. 2022-05-01_hitlist_ixroute.csv.gz)
* Details of each BGP session on the IXP (eg. 2022-05-02_peerinfo_nl-ams_amsix.csv.gz)

Each provider dataset on the datasetset folder contains each on of the three files needed.

### Output (generated files)
* Individual AS classification summary (e.g. 2022-05-09-as_classification.csv)
The as_classification.cvs provides a classification for all connected on the IXP, providing the following fields:
<i>date,asn,is_up_and_open,ixp,as_name,type,method,count_of_as,total_nets,total_discarded_nets,total_nets_without_discards</i>

<b>Type</b> refers to how the AS has been classified (<i>symmetric, asymmetric, hybrid</i>), and 
<b>Method</b> refers the measurement method used: <i>asym-24 or asym-23</i>, indicating the drain prefix size used (/24 or /23)

* Detailed result table (result_table_ases_up_and_open.csv) in the following format
<i>date,method,ixp,nei_net24,nei_net23,nei_asn24,nei_asn23,qt_net_sym24,qt_net_sym23,qt_net_asy24_in,qt_net_asy23_in,qt_net_asy24_out,qt_net_asy23_out,qt_asn_sym24,qt_asn_sym23,qt_asn_asy24_in,qt_asn_asy23_in,qt_asn_asy24_out,qt_asn_asy23_out,qt_asn_hib24,qt_asn_hib23,qt_asn_onlydiscard24,qt_asn_onlydiscard23,qt_asn_nonetworks24,qt_asn_nonetworks23</i>


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
