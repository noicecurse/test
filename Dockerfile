FROM amazoncorretto:18-alpine3.15
ENTRYPOINT ["/usr/bin/test.sh"]

LABEL org.opencontainers.image.source=https://github.com/guneetsahai-neo/test

COPY test.sh /usr/bin/test.sh
RUN chmod +x /usr/bin/test.sh
COPY target/test.jar /usr/share/test/test.jar