FROM adoptopenjdk/openjdk16:jre-16.0.1_9-alpine

RUN apk add --no-cache zip

WORKDIR /home

ADD org.tweetyproject.arg.peaf-1.19-SNAPSHOT-with-dependencies.jar /home/
ADD org.tweetyproject.arg.peaf-1.19-SNAPSHOT.jar /home/
ADD org.tweetyproject.arg.peaf-1.19-SNAPSHOT-sources.jar /home/

ADD peaf_runner.sh /home/
ADD aif_runner.sh /home/

RUN chmod +x peaf_runner.sh
RUN chmod +x aif_runner.sh

# This is a hacky solution to stop getting these errors:
# > Error: Unable to initialize main class org.tweetyproject.arg.peaf.Runner
# > Caused by: java.lang.SecurityException: no manifest section for signature file entry org/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator.class
 
ADD clean_keys.sh /home/
RUN chmod +x clean_keys.sh
RUN ./clean_keys.sh; exit 0;

ENTRYPOINT ["/home/aif_runner.sh"]
