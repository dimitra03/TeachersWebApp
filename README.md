# Teachers Web App

## Overview

The Teachers Web App is a Maven-based Java web application connected to a MySQL Database and it is designed to perform Insert, Delete, Update and Search operations.

## Features

- Search for teachers by last name or id.
- Display a list of teachers with their ID, first name and last name.
- Delete and Update the information of the desired teacher

## Prerequisites

- **Apache Tomcat**: 9.x or any compatible servlet container
- **MySQL**: Version 5.7 or higher
  
  Ensure that MySQL is installed and running on your system. If you do not have MySQL installed, you can download and install it from [MySQL's official website](https://dev.mysql.com/downloads/mysql/).
  
## Database Setup
After installing MySQL, you will need to create a database and import the provided schema.
  
1. **Run Schema Script:**
  Execute the `teachersDB.sql` script to create the necessary tables and schema. You can change the username and password and set your own inside the script.
    For example:
    CREATE USER 'new_user' IDENTIFIED BY 'new_password';
    GRANT ALL ON `teachersDB`.* TO 'new_user';
    where 'new_user' is the new username that the user wants to create and 'new_password' is the new password for that username.

3. **Set Database details:**
  If you changed the username and password you need to update the `application.properties` file with your new database connection details.

## Installation

1. **Download the WAR file**

  Clone or download the repository to get the WAR file.

2. **Deploy the WAR file**:

  Apache Tomcat Example:

  Place the WAR file in the webapps directory of the Tomcat installation.
  Start Tomcat by running the startup.sh (Linux/macOS) or startup.bat (Windows) script located in the bin directory of Tomcat.
  Tomcat will automatically deploy the WAR file, and it will be available as a web application.

3. **Access the Web Application**

   Once the servlet container is running and the WAR file is deployed, access the application in your web browser:
   [http://localhost:8080/TeachersWebApp](http://localhost:8080/TeachersWebApp)

