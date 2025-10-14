services:
  - type: web
    name: soap-jetty-demo
    env: java
    plan: free
    buildCommand: ""
    startCommand: "java -jar soap-jetty-demo-1.0-SNAPSHOT.jar"
