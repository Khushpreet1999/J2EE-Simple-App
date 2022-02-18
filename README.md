# J2EE-Simple-App
Lab 1
Purpose
The purpose of this lab is to develop an EJB application
Task 1: Developing EJB using NetBeans
	
•	Create a new project, from categories select Java EE and from Projects, select Enterprise Application
•	Give a name to the Ejb project, EjbLab.
•	Click on Next. Select the following options:

 

•	Then, click on Finish.
•	In the project navigator, you will see three projects have been created: EjbLab, EjbLab-ejb, EjbLab-war
 

•	EjbLab contains all packages including war and jar files as well as application descriptor xml file
•	EjbLab-jar contains all EJB files.

•	Now you need to create a library project. Go to “New Project->Java->Java Class Library”. The project name would be “EJBRemoteLib” then click finish.


•	In order to develop your EJB application, first you should open this project. Then, right-click on Source packages, then select New>Session
 

•	Give a name to your Ejb such as “SayHello”, type a package like “session” and check Stateless, Remote and Local interface.
 

public String sayHello(String bean){
        return " EJB says hello to"+ bean;
    }

•	When, you click on Finish, you will see three class files: one EJB session bean and 2 interfaces including remote and local interface are created. Note that the remote interface is under “EJBRemoteLib”.

 


•	 Now, you should implement methods for local and remote interfaces. For this, double click on the bean, SayHelloBean.
 

•	In the code, right-click on editor, select Insert Code and then select Add Business Method:
 


•	Enter the name of your business method and specify the return type:

  


•	Now you should implement the body of the business method.
•	Simply send a greeting message from the method for both local and remote interface implementations.

•	So far, you have developed your EJB application. Now, you should implement the client. Client in this lab is a JSP file. For this, do the Task2.

Task 2: Developing EJB client using NetBeans

•	First you should add “EJBRemoteLib” project to “EjbLab-war” project. In order to that, right click on “Libraries” under “EjbLab-war”” project and choose add project then add “EJBRemoteLib” project into “EjbLab-war” project.
•	Open the EjbLab-war project and select index.jsp.
 
•	In order to develop the client, we use the old way.
The new way using annotation is not supported by this version of Glassfish.

 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="session.SayHelloRemote" %>
<%@page import="javax.naming.Context" %>
<%@page import="javax.naming.InitialContext" %>
<%@page import="javax.naming.NamingException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
<% Context ctx = new InitialContext();
SayHelloRemote sb = (SayHelloRemote) ctx.lookup(SayHelloRemote.class.getName());
String result = sb.sayHello("Bean");
out.println(result);
%>

    </body>
</html>
•	As you see in the picture, you should import the required classes into the jsp, then implement locating and invoking the EJB remote interface. You should also import the EJB package, Hello.

Task 3: Developing EJB Application Descriptor 

•	Select EjbLab, right-click and select New> Standard Deployment Descriptor
 

•	Click on Finish
 
•	You will see application.xml is added to your EJB package
 

Now run the application.

Tips to resolve few common errors: 
1. Add necessary jar and libraries to bean project if missing and facing compile or build errors
 

2. Remove standard configuration file from bean .
3. Delete newly jars as and when needed when building the projects and errors seen in console log.
4. Build and Run the projects in a definite sequence as instructed in class.


