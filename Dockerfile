FROM python:3.11-bookworm

RUN pip install https://github.com/casper-hansen/AutoAWQ/releases/download/v0.2.6/autoawq-0.2.6-cp311-cp311-linux_x86_64.whl

RUN mkdir -p /data && cd /data

WORKDIR /data

COPY ./AutoAWQ.py /data/AutoAWQ.py

RUN mkdir -p /output

ENV AUTOAWQ_OUTPUTDIR=/output

ENTRYPOINT [ "python", "AutoAWQ.py" ]