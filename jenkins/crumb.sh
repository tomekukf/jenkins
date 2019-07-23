#/bin/bash
crumb=$(curl -u "remote:1234" -s 'http://jenkins.centos:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
echo $crumb
curl -u "remote:1234" -H "$crumb" -X POST 'http://jenkins.centos:8080/job/ENV/build?delay=0sec'
