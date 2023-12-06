# CI_CD-Final-Project
# STEPS
1. Create SpringBoot app in Intellij with the Maven build and Jar executable (Java17)
2. Create Rest Controller Class with @RestController annotations for the class and @GetMapping for the method add root path("/")
3. Create test classes and add dependencies (surefire) if needed to show testing results in Jenkins
3. POM.xml should contain all dependencies and add <finalname> tag for the JAR file.
4. Under main/resources/application.properties add server.port = 8090(or similar) to expose it on the web 
5. Create Git repository and do git init then git add . then git commit -m "message" THEN git branch -M main  THEN  git remote add origin https://github.com/nenad0711/CI_CD-Final-Project.git THEN git push -u origin main on the terminal in Intellij
6. Create new job pipeline in Jenkins on localhost:8080 and sync with the git repo and add Script from the SCM and add git repo url again 
7. In Intellij create Jenkinsfile under root project and add stages and steps
8. Create Dockerfile -> Select Base image FROM tag -> ADD jar file to the image -> EXPOSE port for the app -> ENTRYPOINT, it`s an exec command
9. To create an image and run the container -> On CLI docker build -f Dockerfile -p "image-name" . ; On CLI docker run -dp "3003:3003" "image-name"
10. To publish image to dockerhub -> docker tag "image name" "reponame/imagename" ; docker push "reponame/image name
# KUBERNETES
1. Start minikube / minikube start ERROR: Unable to resolve the current Docker CLI context "default": context "default" / Type in CMD docker context use default
2. Check your cluster info / kubectl cluster-info
3. Review namespaces (environments)
4. Create deployment -kubectl create deployment CEN4802C-Final --image nenad0711/CEN4802C-Final  -  DockerHub repo image that we pushed
5. Verify deployment - kubectl get deployments- 
6. Expose deployment as a service so it can be viewed from outside - kubectl expose deployment CEN4802C-Final --type=LoadBalancer --port=3003- USE THE SAME CONFIGURED PORT like in the app 
7. See the service -minikube service final-project- 
8. Check the deployment in the kubernetes dash -minikube dashboard- (open another cmd to continue working)
9. Clean up -kubectl delete service final-project  - kubectl delete deployment final-project - minikube stop
# DATADOG
1. Install Datadog Agent with DeamonSet on Kubernetes. Deamon sets always maintain one pod per node ensuring that all new clusters get a pod from the deamon set
2. Install HELM- package manager for Kubernetes
3. Create secret to store datadog credentials
4. Create datadog YAML file to run config file
5. Go to the Datadog Dashboard and show monitoring container. 