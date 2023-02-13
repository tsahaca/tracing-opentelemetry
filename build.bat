mvn clean package
copy opentelemetry-javaagent-all.jar opentelemetry-app-a\
copy opentelemetry-javaagent-all.jar opentelemetry-app-b\
docker-compose up --build
