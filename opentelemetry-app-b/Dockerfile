FROM openjdk:11-jre
RUN mkdir -p /app/bin
COPY ./target/opentelemetry-app-b.jar /app/bin
COPY opentelemetry-javaagent.jar /app/bin
CMD java -Dotel.traces.exporter=jaeger \
         -Dotel.metrics.exporter=none \
         -Dotel.exporter.jaeger.endpoint=http://jaeger:14250 \
         -Dotel.service.name=OpenTelemetryAppB \
		 -Dapplication.home=/app/bin/ \
		 -Dapplication.name=OpenTelemetryAppB \
		 -javaagent:/app/bin/opentelemetry-javaagent.jar \
		 -jar \
		 /app/bin/opentelemetry-app-b.jar