#!/bin/sh

if [ -f "/usr/share/java/junit-platform-console-standalone.jar" ]; then
    JUNIT="/usr/share/java/junit-platform-console-standalone.jar"
elif [ -f "/usr/local/share/java/junit-platform-console-standalone.jar" ]; then
    JUNIT="/usr/local/share/java/junit-platform-console-standalone.jar"
elif [ -f "./junit-platform-console-standalone-1.10.2.jar" ]; then
    JUNIT="./junit-platform-console-standalone-1.10.2.jar"
else
    echo "Erreur : JUnit introuvable"
    exit 1
fi

rm -rf out
javac -d out -cp "$JUNIT" $(find src -name "*.java") || exit 1
java -jar "$JUNIT" execute --disable-banner --disable-ansi-colors \
  -cp out --select-package fr.nanterre.vehicules
