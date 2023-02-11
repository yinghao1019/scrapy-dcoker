FROM python:3.6
COPY .env /.env
VOLUME ./scrapyd.conf /etc/scrapyd/
EXPOSE 6800
RUN pip3 install -r requirements.txt
CMD scrapyd