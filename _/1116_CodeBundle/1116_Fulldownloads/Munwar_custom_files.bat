rem ---------------------------------------------------------------------------
rem Replaces/Adds custom files required for the Alfresco Book Demo 
rem to the new Alfresco installation as specified by you.
rem 
rem Munwar, November 27, 2006
rem ---------------------------------------------------------------------------

set L_LOCALDIR=%CD%
set L_SRCDIR=C:\CIGNEX\AlfrescoBook\AlfrescoBook_downloads\full_downloads_alf14
set L_DESTDIR=C:\J2EE\alfresco_book_14

rem ------------ Copy files in extension folder ----------------
CD %L_DESTDIR%\tomcat\shared\classes\alfresco\extension
copy %L_SRCDIR%\custom-model-context.xml .
copy %L_SRCDIR%\customModel.xml .
copy %L_SRCDIR%\web-client-config-custom.xml .

rem ------------ Replace Logos and Icons ----------------
CD %L_DESTDIR%\tomcat\webapps\alfresco\images\logo
move AlfrescoLogo32.png AlfrescoLogo32-ORIGINAL.png
move AlfrescoLogo200.png AlfrescoLogo200-ORIGINAL.png
move AlfrescoFadedBG.png AlfrescoFadedBG-ORIGINAL.png
copy %L_SRCDIR%\AlfrescoLogo32.png .
copy %L_SRCDIR%\AlfrescoLogo200.png .
copy %L_SRCDIR%\AlfrescoFadedBG.png .

CD %L_DESTDIR%\tomcat\webapps\alfresco\images\icons
copy %L_SRCDIR%\space-icon-custom1.gif .

rem ------------ Copy files for Dashboard View Chapter11 -------
CD %L_DESTDIR%\tomcat\webapps\alfresco\jsp\dashboards\dashlets
copy %L_SRCDIR%\chapter11_press_releases.jsp .
CD %L_DESTDIR%\tomcat\webapps\alfresco\WEB-INF\classes\alfresco\templates
copy %L_SRCDIR%\chapter11_press_releases.ftl .

CD %L_LOCALDIR%

echo I am done...
pause
