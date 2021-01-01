// -------------------------------------------------------------------
// Name: chapter6_publish_effective_content.js
// Description: Moves effective content to Production site
// -------------------------------------------------------------------
var stagingFolder    = companyhome.childByNamePath("Intranet/Marketing Communications/Website Documents/Staging");
var productionFolder = companyhome.childByNamePath("Intranet/Marketing Communications/Website Documents/Production");

if(stagingFolder != null)
{
   var i=0;
   var today = new Date();
   
   stagingChildren  = stagingFolder.children;
   stagingTotal       = stagingChildren.length;

   for(i=0; i<stagingTotal;i++)
   {
      child = stagingChildren[i];
      if(child.properties["cm:from"] <= today)
      { 
         child.move(productionFolder);
      }
   }
}
