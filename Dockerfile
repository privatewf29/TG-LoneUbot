# We're using Ubuntu 20.10
FROM privatener29/dockerlonewolfie:w29f

RUN git clone -b TG-LoneUbot https://github.com/W29F/TG-LoneUbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/W29F/TG-LoneUbot/master/requirements.txt

CMD ["python3","-m","userbot"]
