# CI_CD-Final-Project
STEPS
Create SpringBoot app in Intellij with the MAven build and Jar executable (Java17)
Create Rest Controller Class with @RestController annotations for the class and @GetMapping for the method add root path("/")
POM.xml should contain all dependencies and add <finalname> tag for the JAR file. 
Under main/resources/application.properties add server.port = 8090(or similar) to expose it on the web 
Create Git repository and do git init then git add . then git commit -m "message" THEN git branch -M main  THEN  git remote add origin https://github.com/nenad0711/CI_CD-Final-Project.git THEN git push -u origin main on the terminal in Intellij
Create new job pipeline in Jenkins on localhost:8080 and sync with the git repo and add Script from the SCM and add git repo url again 
In Intellij create Jenkinsfile under root project 

