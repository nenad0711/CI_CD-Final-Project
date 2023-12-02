# CI_CD-Final-Project
# STEPS
1. Create SpringBoot app in Intellij with the MAven build and Jar executable (Java17)
2. Create Rest Controller Class with @RestController annotations for the class and @GetMapping for the method add root path("/")
3. Create test classes and add dependencies (surefire) if needed to show testing results in Jenkins
3. POM.xml should contain all dependencies and add <finalname> tag for the JAR file.
4. Under main/resources/application.properties add server.port = 8090(or similar) to expose it on the web 
5. Create Git repository and do git init then git add . then git commit -m "message" THEN git branch -M main  THEN  git remote add origin https://github.com/nenad0711/CI_CD-Final-Project.git THEN git push -u origin main on the terminal in Intellij
6. Create new job pipeline in Jenkins on localhost:8080 and sync with the git repo and add Script from the SCM and add git repo url again 
7. In Intellij create Jenkinsfile under root project and add stages and steps
