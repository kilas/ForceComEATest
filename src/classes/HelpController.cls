public class HelpController{

    public String getName() {
        return 'HelpController';
    }
    
    public PageReference redirectByProfile()
    {   
                 
            String statResourceURL = getResourceURL('custom_help_pdf');
            PageReference createEventPage = new PageReference(statResourceURL );
            createEventPage.getParameters().put('nooverride', '1');
            return createEventPage;
         
     }
     
     public String getResourceURL(String resourceName) {

        List<StaticResource> resourceList = [
           SELECT Name, NamespacePrefix, SystemModStamp
           FROM StaticResource
           WHERE Name = :resourceName
        ];                         

        if (resourceList.size() == 1) {
           String namespace = resourceList[0].NamespacePrefix;
           return '/resource/'
          + resourceList[0].SystemModStamp.getTime() + '/'
          + (namespace != null && namespace != '' ? namespace + '__' : '')
          + resourceName;
        } else return '';    

    }
}