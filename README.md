# docker-gatsby

Docker file and script to build a gatsby container for website development

```docker build -t blog .```

```docker build https://github.com/kahunacoder/docker-gatsby.git```


* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 blog sh```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 blog develop```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 blog plugin```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 blog stage```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 blog build```
