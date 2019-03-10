FROM sebp/sonar-runner

USER root
WORKDIR /

RUN apt-get update && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="/opt/sonar-runner-2.4/bin:$PATH"

ENTRYPOINT /bin/bash
