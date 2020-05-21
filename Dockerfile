# Base Image
FROM python:3.6

# Metadata
MAINTAINER William Poehlman <william.poehlman@sagebase.org>
LABEL base_image="ubuntu:latest"
LABEL about.summary="Docker image for rnaseq utils scripts"
LABEL about.license="SPDX:MIT"
LABEL about.tags="RNASeq"


FROM python:3.6

ADD bin/starmerge.py /
ADD bin/clean_tables.py /

COPY bin/starmerge.py /usr/local/bin
COPY bin/clean_tables.py /usr/local/bin

RUN chmod a+x /usr/local/bin/starmerge.py
RUN chmod a+x /usr/local/bin/clean_tables.py

RUN pip install pandas synapseclient

CMD [ "python" ]
