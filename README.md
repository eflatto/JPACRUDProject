# JPACRUDProject

# Description 

This is a recipe java web application that allows the user to create, view, and update recipes. 

Some features of this recipe app include:
<ul>
<li>Creating new recipes</li>
<li>Viewing existing recipes</li>
<li>Updating existing recipes</li>
<li>Deleting existing recipes</li>
<li>Searching for recipes by keyword</li>
<li>Also being able to see the count of how many recipes are in the database</li>
</ul>

# Technologies Used
<ul>
<li>Java</li>
<li>MySQL</li>
<li>Spring Boot</li>
<li>Spring MVC</li>
<li>JPA</li>
<li>Hibernate</li>
<li>Gradle</li>
<li>Java Server Pages</li>
<li>HTML</li>
<li>CSS</li>
<li>BootStrap</li>
<li>Spring Tool Suite</li>
<li>MySQL WorkBench</li>




</ul>

# Set Up

This project integrates the JPA project with a Spring Boot project using Gradle. 


# Spring Boot
The Spring Boot project contains the web interface for the application, including the controllers, views, and the Data Access Object (DAO) interface and class . The project also uses Gradle for build and dependency management.
When creating a new Spring Boot Project I used the Spring Starter project initializer to specify the dependencies such as Spring Web, Spring JPA and MySQL. Then in the build.gradle file I added the dependency needed to integrate the Recipe JPA project with the SpringBoot project

In the application.properties file of the Spring Boot project I configured the JPA properties to connect to the Database such as the database URL, username,and password, as well as added a view resolver in order to make the mapping from the controller to the JSP more legible and easier to maintain.

# JPA
The set up for the JPA project was adding the gradle nature to the project adding the necessary dependencies to the build.gradle. Adding and defining  the entity Recipe class and giving each attribute and relationship the appropriate annotations such as  @Entity, @Id, @Column, names and getters and setters 

Then configuring the persistance.xml with the appropriate persistance unit and Recipe entity class so that Hibernate could map Recipe entity class to the Database.


# Classes 

<h3> RecipeDAOImpl </h3>

This class implements the RecipeDAO interface using the Java Persistence API (JPA) for database access.

The class contains methods for finding a Recipe entity by its ID, retrieving all Recipe entities from the database, creating a new Recipe entity, updating an existing Recipe entity, deleting a Recipe entity by its ID, and searching for Recipe entities by keyword. Additionally, it includes a method to count the total number of Recipe entities in the database.

<h3> RecipeController </h3>

This class is a Spring MVC controller class that does the handling of Get and Post requests related to the Recipe entities.


# Web

The JSP files are located in the src/main/webapp/WEB-INF/ directory.

There is a jsp for the bootstrap/css code that is included in every other jsp the rest of the jsps are forms to do the CRUD operations and the rest are used to display the information


# Lessons Learned


a better understanding of Spring Framework such as how to use the annotations such as @Autowired, @Controller, @RequestMapping, @Transactional, and @Service to build and manage the project

a better understanding of Java Persistence API (JPA) such as how to use annotations, such as @Entity, @Table, @Id, @GeneratedValue, @Column and how they can be used to map Java classes to database tables and vice versa.

a better understanding of Model-View-Controller (MVC) pattern. I learned about how the model, view, and controller components are implemented and how they interact with each other to handle user requests and display data on the web page.

I learned about the configuration process of making a full stack app. Such as configuring JPA with SPring Boot requires a number of properties to be configured

I got a better understanding of how to use MySQL workbench as i was able to import a CSV file to upload a number of recipes instead of adding them one by one.




