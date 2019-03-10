FROM sebp/sonar-runner

USER root
WORKDIR /
RUN PATH="/opt/sonar-runner-2.4/bin:$PATH"

RUN apt-get update && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT /bin/bash
