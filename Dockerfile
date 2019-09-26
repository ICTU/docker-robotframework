FROM python:3.7.4-slim-stretch

COPY requirements.txt .
ARG RUNTIME_UID=1000

RUN pip install --no-cache-dir -r requirements.txt && \
  useradd --uid $RUNTIME_UID --create-home robot

USER robot
WORKDIR /home/robot/workspace/

ENTRYPOINT [ "robot" ]