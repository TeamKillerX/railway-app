FROM okteto/python:3

WORKDIR /root/TeamKillerX

RUN apt -qq update
RUN apt -qq install -y --no-install-recommends \
    curl \
    git \
    gnupg2 \
    unzip \
    wget \
    python3-pip \
    ffmpeg

COPY . .

RUN pip3 install --upgrade pip setuptools
RUN pip3 install --upgrade pykillerx
RUN pip3 install -r requirements.txt

CMD [ "bash", "start" ]
