FROM public.ecr.aws/lambda/python:3.8

COPY ./assets/requirements.txt /tmp/requirements.txt

RUN pip install --no-cache-dir -r /tmp/requirements.txt && \
    rm -f /tmp/requirements.txt

COPY ./assets/run.sh /opt/run/pydeps.sh
RUN chmod +x /opt/run/pydeps.sh

WORKDIR /opt/run

ENTRYPOINT [ "/bin/sh", "/opt/run/pydeps.sh" ]
