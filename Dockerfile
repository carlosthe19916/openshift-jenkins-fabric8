FROM openshift/jenkins-2-centos7

COPY plugins.txt /var/lib/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh /var/lib/jenkins/plugins.txt

# copy custom built plugins
COPY plugins/*.hpi /var/lib/jenkins/ref/plugins/

# so we can use jenkins cli
#COPY config/jenkins.properties /var/lib/jenkins/ref/

# remove executors in master
#COPY config/*.groovy /var/lib/jenkins/ref/init.groovy.d/

# lets configure Jenkins with some defaults
#COPY config/*.xml /var/lib/jenkins/ref/