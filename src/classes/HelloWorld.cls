@isTest
public class HelloWorld {
    public static void sayYou(){
        System.debug('You');
    }
    
    public void sayMe(){
        System.debug('Me');
    }
    
    public static String sayHelloWorld(String name){
    	String result = 'Hello ' + name;
    	return result;
    }
    private static testMethod void testSayHelloWorld(){
    	String result = sayHelloWorld('Khurram');
    	System.debug(result);
    	System.assert(result.equals('Hello Khurram'));
    }
  
    
}