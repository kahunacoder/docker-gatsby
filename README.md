# docker-gatsby

Docker file and script to build a gatsby container for website development

Build a container for developing
```docker build https://github.com/kahunacoder/docker-gatsby.git -t gatsby-blog```

Start developing
```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog develop```

Commands
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog develop```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog sh```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog clearcache```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog stage```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog build```
