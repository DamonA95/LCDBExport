LodExport by DamonA

The idea behind this project is to create a all-in-one export-kernel to support all different .lod.

Requirement - WebServer (Apache, IIS), PHP 64Bit 5.4 or higher, MySQL 5.5 or higher


Instruction how to setup this tool. (Windows/Linux)
- Open https://github.com/DamonA95/LCDBExport and go to releases, download the latest release
- Install a LAMP installation like XAMPP
- Create a database example with the name "lastchaos_exporter"
- Load the lastchaos_exporter.sql into it
- Extract the .zip filde to your htdocs/www folder
- Setup the config file, one path to the string folder one to the data folder


Instruction how to work with the database from exporter.
- In the t_lods you see the complete list you can add so many .lods like you want.
- a_mytable and a_mytable2 are the tables in the exporter db, the a_dbtable and a_dbtable2 are the table names from the data database
- a_count = need on some files it will write the counted rows in a Int32 at the first
- a_enable you can set to 1 for enabled or 0 disabled
- a_category is for sort string files and data files 1 will save into data path and 2 to string path from the config


