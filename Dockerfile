FROM rasa/rasa-x:stable

COPY app /app
COPY server.sh /app/server.sh

USER root
RUN chmod -R 777 /app
USER 1001

WORKDIR /app
# FIXME: rasa-x load with http api 
#RUN ( cd /app && rasa train -v --force nlu )

ENTRYPOINT ["/app/server.sh"]
