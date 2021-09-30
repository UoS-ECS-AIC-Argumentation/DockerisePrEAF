#!/bin/sh

zip -d org.tweetyproject.arg.peaf-1.19-SNAPSHOT.jar 'META-INF/*.SF' 'META-INF/*.RSA' 'META-INF/*DSA' 
zip -d zip -d org.tweetyproject.arg.peaf-1.19-SNAPSHOT.jar 'META-INF/*.SF' 'META-INF/*.RSA' 'META-INF/*DSA' 
zip -d org.tweetyproject.arg.peaf-1.19-SNAPSHOT-with-dependencies.jar 'META-INF/*.SF' 'META-INF/*.RSA' 'META-INF/*DSA' 
