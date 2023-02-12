# scrapy-docker
### Introduction
This is dokcer image for build image.
Additional,when you run below step,you should set .env 
in project root directory

### Quick start
1. Clone the repo and get into the folder
```
$ cd Airflow-Learning-English-tool
```
2. Use docker build to create image
```
$ docker build -t scrapyd:latest .
```
3. use image to build container
```
$ docker run -d -p 6800:6800 -v ./scrapyd.conf:/etc/scrapyd/ scrapyd
```
4. use image to build container
```
$ docker run -d -it -p 6800:6800 -v %cd%\scrapyd.conf:/etc/scrapyd/ scrapyd
```
4. check server health
```
$ curl http://localhost:6800/daemonstatus.json
```
### Reference
* Scrapyd对接Docker([傳送門](https://python3webspider.cuiqingcai.com/15.3scrapyd-dui-jie-docker))
* scarpyd offical api([傳送門](https://scrapyd.readthedocs.io/en/stable/api.html))