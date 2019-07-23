echo "********************"
echo "***** BUILDING *****"
echo "********************"

WORKSPACE=/var/jenkins_home/workspace/jenkins-pipeline/jenkins/pipeline

ls /var/jenkins_home/workspace/jenkins-pipeline/jenkins/pipeline
ls /var/jenkins_home/workspace/jenkins-pipeline/jenkins/pipeline/java-app
docker run  -v /var/jenkins_home/workspace/jenkins-pipeline/jenkins/pipeline/java-app/pom.xml:/app -w /app maven:3-alpine "$@" 
