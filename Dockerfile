FROM debian:7-slim as base

COPY ./tags.sh .

RUN chmod +x ./tags.sh

CMD bash ./tags.sh