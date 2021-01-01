Alfresco Book DEMO Site Setup
=============================

The files in the folder are useful to bring up the complete DEMO site as per the Alfresco Book.

-------------------
A. Install Alfresco
-------------------

If you have not installed Alfresco, then follow the steps:

1. Install Tomcat version of Alfresco on windows operating system
2. Make sure you have the portable Open Office installed as a part of Alfresco installation
3. Read README.txt file in Alfresco installation folder
4. Read README_mysql.txt in Alfresco installation folder for MySQL database
5. Install License files as required for Enterprise version

If you want to clean up an existing Alfresco installation, then follow the steps:

1. Remove tomcat/webapps/alfresco folder and copy the latest alfresco.war file
2. Remove alf_data folder, run db_remove.bat and then db_setup.bat files

-------------------------------------------------------
B. Bootstrap the Alfresco Repository with the DEMO data
-------------------------------------------------------

1. Go to your Alfresco installation's <extension> folder, tomcat\shared\classes\alfresco\extension and 
   Rename restore-context.xml.sample to restore-context.xml

2. Copy the "restore" sub-folder and its' content from this folder to tomcat\shared\classes\alfresco\extension\ folder

3. Start Alfresco (Alfresco will be loaded with the Demo data as initial data)

4. Stop Alfresco

5. Go to <extension> folder, tomcat\shared\classes\alfresco\extension 
   - Rename restore-context.xml back to restore-context.xml.sample
   - Delete "restore" folder and its' contents

------------------------------------------
C. Install the Book Demo scripts and files
------------------------------------------

1. Edit "Munwar_custom_files.bat" file in this folder and update the following values in the file
   L_SRCDIR => Update with the location of Alfresco Book downloads folder
   L_DESTDIR => Update with the location of your Alfresco installation

2. Run Munwar_custom_files.bat file by double clicking on the file.  This copies all the required files to your Alfresco installation.

3. Start Alfresco (Alfresco will be started with the Demo configuration files)

4. Login to Alfresco web client http://localhost:8080/alfresco and start using the Alfresco Book Demo Application
