# scrapy-docker
### Introduction
This is dokcer image for build image.
Additional,when you run below step,you should set .env 
in project root directory

### Quick start
1. Clone the repo and get into the folder
```
$ cd scrapyd-docker
```
2. set basic auth (username,password) in etc folder

3. Use docker build to create image
```
$ docker build -t scrapyd:latest .
```
4. use image to build container with network for airflow
```
$ docker run -d -p 6800:6800 --name scrapyd --network=<your network name> -v ./etc:etc/scrapyd/ -v /var/log/scrapyd:/var/log/scrapyd -u $(id -u):$(id -g) --restart unless-stopped  scrapyd
```
5. check server health
```
$ curl -u -u yourusername:yourpassword http://localhost:6800/daemonstatus.json
```

### Reference
* Scrapyd对接Docker([傳送門](https://python3webspider.cuiqingcai.com/15.3scrapyd-dui-jie-docker))
* scarpyd offical api([傳送門](https://scrapyd.readthedocs.io/en/stable/api.html))