FROM openjdk:17

RUN useradd -r -M -s /usr/sbin/nologin example

WORKDIR /example
COPY . .

RUN chown -R example:example /example

USER example
RUN javac Main.java
CMD ["java", "Main"]
