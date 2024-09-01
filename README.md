# Online Medical Helpline

This project is an Online Medical Helpline that allows users to connect with medical professionals for assistance. The project is built using Javaand JSP and deployed on an Apache Tomcat server.

## Features

- **User Registration:** Users can register and create an account.
- **Medical Consultation:** Users can request medical consultations.
- **Prescription Management:** Doctors can provide prescriptions to users.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Java JDK 11 or higher installed.
- Apache Tomcat 9 or higher installed.
- MySQL or any other database for storing user and medical data.

## Installation

### Step 1: Clone the Repository

Clone this repository to your local machine:

bash
git clone: https://github.com/your-username/online-medical-helpline.git

### Step 2: Set Up the Database


Set up your MySQL database and create the necessary tables. You can find the SQL scripts in the db directory of this repository.

### Step 3: Configure the Application


Edit the application.properties file located in the src/main/resources/ directory to configure your database connection:

- spring.datasource.url=jdbc:mysql://localhost:3306/your_database_name
- spring.datasource.username=your_username
- spring.datasource.password=your_password

## Step 4: Build the Project
Navigate to the project's root directory and build the project using Maven:

 mvn clean install

## Step 5: Deploy on Apache Tomcat

1. Locate the WAR file generated in the target directory.
2. Copy the WAR file to the webapps directory of your Apache Tomcat installation.
3. Start or restart the Tomcat server.

## Step 6: Access the Application

Once deployed, you can access the application by navigating to:

http://localhost:8080/online-medical-helpline

