# Teachers Web App

## Overview

The Teachers Web App is a Maven-based Java web application connected to a MySQL Database and it is designed to perform Insert, Delete, Update and Search operations.

## Features

- Search for teachers by last name or id.
- Display a list of teachers with their ID, first name and last name.
- Delete and Update the information of the desired teacher

## Prerequisites

- **Java Development Kit (JDK)**: 8 or higher
- **Apache Maven**: 3.x [Download here](https://maven.apache.org/download.cgi).
- **Apache Tomcat**: 9.x or any compatible servlet container
- **Git**: To clone the repository [Download here](https://git-scm.com/downloads).
- **MySQL**: Version 5.7 or higher
  
  Ensure that MySQL is installed and running on your system. If you do not have MySQL installed, you can download and install it from [MySQL's official website](https://dev.mysql.com/downloads/mysql/).
  
  **Database Setup**: After installing MySQL, you will need to create a database and import the provided schema.
  
## Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/dimitra03/TeachersWebApp.git
   cd your-repository
    ```

2. **Build the application**:

   Navigate to the project's root directory and run:

    ```bash
    mvn clean install
    ```

    This command will compile the code, run the tests, and package the application.

## Running the Application

After building the application, you can run it by deploying to a servlet container

1. **Copy the generated WAR file**:

   After building the project, locate the generated WAR file in the `target` directory:

   ```bash
   target/TeachersWebApp.war
   ```

  Copy this WAR file to the webapps directory of your servlet container. For example, if you are using Tomcat:

  ```bash
  cp target/TeachersWebApp.war /path/to/tomcat/webapps/
  ```

2. **Start the servlet container**:

  If your servlet container is not already running, start it. For example, to start Tomcat:

  ```bash
  /path/to/tomcat/bin/startup.bat
  ```
    
3. **Access the application**:

  Once the servlet container is running and the WAR file is deployed, access the application in your web browser: [http://localhost:8080/TeachersWebApp](http://localhost:8080/TeachersWebApp)
