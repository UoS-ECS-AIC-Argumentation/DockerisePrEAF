FROM adoptopenjdk/openjdk16:jre-16.0.1_9-centos

WORKDIR /home

ADD org.tweetyproject.arg.peaf-1.19-SNAPSHOT-with-dependencies.jar /home/
ADD org.tweetyproject.arg.peaf-1.19-SNAPSHOT.jar /home/
ADD org.tweetyproject.arg.peaf-1.19-SNAPSHOT-sources.jar /home/

ADD runner.sh /home/

RUN chmod +x runner.sh

# This is a hacky solution to stop getting these errors:
# > Error: Unable to initialize main class org.tweetyproject.arg.peaf.Runner
# > Caused by: java.lang.SecurityException: no manifest section for signature file entry org/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator.class

ADD clean_keys.sh /home/
RUN yum install zip -y
RUN chmod +x clean_keys.sh
RUN ./clean_keys.sh; exit 0;

ENTRYPOINT ["/home/runner.sh"]
