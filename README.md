# docker-gatsby

Docker file and script to build a gatsby container for website development

Requirements
* docker
* git

1) Build a container for developing

```docker build https://github.com/kahunacoder/docker-gatsby.git -t gatsby-blog```

2) Start developing

```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog develop```

3) Open the source code and start editing!

Your site is now running at http://localhost:8000!

Note: You'll also see a second link: http://localhost:8000/___graphql. This is a tool you can use to experiment with querying your data. Learn more about using this tool in the Gatsby tutorial.

Open the site directory in your code editor of choice and edit src/pages/index.js. Save your changes and the browser will update in real time!



Commands
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog develop```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog sh```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog clearcache```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog stage```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog build```
