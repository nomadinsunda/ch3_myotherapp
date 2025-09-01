FROM openjdk:17

RUN useradd -r -M -s /usr/sbin/nologin example

WORKDIR /example

COPY --chown=example:example . .

USER example
RUN javac Main.java
CMD ["java", "Main"]
