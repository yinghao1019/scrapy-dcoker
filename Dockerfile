FROM python:3.7
COPY .env /.env
COPY ./requirements.txt /
COPY ./scrapyd.conf /etc/scrapyd/scrapyd.conf
RUN pip3 install -r requirements.txt
CMD scrapyd