FROM zmkfirmware/zmk-build-arm:stable

VOLUME /build
VOLUME /config

COPY ./scripts/entrypoint.sh /

ARG BOARD
ENV BOARD=${BOARD:-bt75}

CMD ["/bin/bash", "entrypoint.sh"]
