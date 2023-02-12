FROM python:3.7
COPY .env /.env
COPY ./requirements.txt /
COPY ./scrapyd.conf /etc/scrapyd/
RUN pip3 install -r requirements.txt
CMD scrapyd