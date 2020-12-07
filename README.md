# docker-gatsby

Docker file and script to build a gatsby container for website development

Requirements
* docker
* git
* code editor: VS Code Recommended
* [Notion.so](http://notion.so) account `FREE`
* Your own domain `~$10/year`
* GitHub account `FREE`
* Netlify account `FREE`
* Coding Knowledge: `2/5` 
(*Enough to know where a chunk of code starts and ends)*

## Create your development envrionment.

VSCode editor assumed here.

**Step 1: Build a container for developing**

Create a new folder for your project and open it with vs code and paste the following into the terminal

```docker build https://github.com/kahunacoder/docker-gatsby.git -t gatsby-blog```

**Step 2: Start developing**

After step one finished paste the following line into your terminal.

```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog develop```

**Step 3: Check out the default site!**

The terminal will display this message.

Your site is now running at http://localhost:8000!

Note: You'll also see a second link: http://localhost:8000/___graphql. This is a tool you can use to experiment with querying your data. Learn more about using this tool in the Gatsby tutorial.

## Make this site your own.

**Step 1: Duplicate the content table**

Duplicate the table at https://www.notion.so/kahunacoder/b3189a381ce8490796fea90fa68310c2?v=4a46e38c7e514dee8ffbaf3ad690313e


**Step 2: Edit this piece of code into your gatsby-config.js file**

Replace the table url with the one you duplicated in step one.
```jsx
plugins: [
    {
      resolve: `@kahunacoder/docker-notion-database`,
      options: {
        sourceConfig: [
          {
            name: 'posts',
            table: 'https://www.notion.so/kahunacoder/b3189a381ce8490796fea90fa68310c2?v=4a46e38c7e514dee8ffbaf3ad690313e',
            cacheType: 'html'
          }
        ]
      }
    }
]
```

**Step 3: Also edit the sites meta data into your gatsby-config.js file**

Replace the siteMetadata fields with your own. Remove options you don't use.

```jsx
  siteMetadata: {
    title: `Site Title`,
    author: `Your name`,
    description: `A blog.`,
    siteUrl: `http://example.com/`,
    siteVerification: {
      google: ``,
      bing: ``
    },
    social: {
      twitter: ``,
      linkedin: ``,
      facebook: ``,
      stackOverflow: ``,
      github: ``,
      instagram: ``,
      pinterest: ``,
      youtube: ``,
      email: ``,
      phone: ``,
      fax: ``,
      address: ``
    },
    keywords: ``,
    organization: {
      name: ``,
      url: ``
    },
  },
```

**Step 4: Save your changes and stop the development server** 

In your terminal hold the ```control``` key down and press the ```c``` key

**Step 5: Restart the development server** 

 Verify your changes by pasting this into the termianl and visiting http://localhost:8000
 
```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog develop```


Commands
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog develop```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog sh```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog clearcache```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog stage```
* ```docker run -it --rm -v $(pwd)/site:/site -p 8000:8000 gatsby-blog build```


## 🧐 What's inside?
A quick look at the top-level files and directories you'll see in a Gatsby project.
```
.
├── node_modules
├── src
├── .gitignore
├── .prettierrc
├── gatsby-browser.js
├── gatsby-config.js
├── gatsby-node.js
├── gatsby-ssr.js
├── LICENSE
├── package-lock.json
├── package.json
├── postcss.config.js
├── README.md
└── tailwind.config.js
```

**/node_modules:** This directory contains all of the modules of code that your project depends on (npm packages) are automatically installed.

**/src:** This directory will contain all of the code related to what you will see on the front-end of your site (what you see in the browser) such as your site header or a page template. src is a convention for “source code”.

**.gitignore:** This file tells git which files it should not track / not maintain a version history for.

**.prettierrc:** This is a configuration file for Prettier. Prettier is a tool to help keep the formatting of your code consistent.

**gatsby-browser.js:** This file is where Gatsby expects to find any usage of the Gatsby browser APIs (if any). These allow customization/extension of default Gatsby settings affecting the browser.

**gatsby-config.js:** This is the main configuration file for a Gatsby site. This is where you can specify information about your site (metadata) like the site title and description, which Gatsby plugins you’d like to include, etc. (Check out the config docs for more detail).

**gatsby-node.js:** This file is where Gatsby expects to find any usage of the Gatsby Node APIs (if any). These allow customization/extension of default Gatsby settings affecting pieces of the site build process.

**gatsby-ssr.js:** This file is where Gatsby expects to find any usage of the Gatsby server-side rendering APIs (if any). These allow customization of default Gatsby settings affecting server-side rendering.

**LICENSE:** Gatsby is licensed under the MIT license.

**package-lock.json** (See package.json below, first). This is an automatically generated file based on the exact versions of your npm dependencies that were installed for your project. (You won’t change this file directly).

**package.json:** A manifest file for Node.js projects, which includes things like metadata (the project’s name, author, etc). This manifest is how npm knows which packages to install for your project.

**postcss.config.js:** The PostCSS configuration file where TailwindCSS is configured as a plugin and other plugins like autoprefixer or postcss-purgecss can be added.

**README.md:** A text file containing useful reference information about your project.

**tailwind.config.js:** The TailwindCSS configuration file, see their documentation for more information on how to customize Tailwind.

## 🎓 Learning Gatsby
Looking for more guidance? Full documentation for Gatsby lives on the website. Here are some places to start:

For most developers, we recommend starting with our in-depth tutorial for creating a site with Gatsby. It starts with zero assumptions about your level of ability and walks through every step of the process.

To dive straight into code samples, head to our documentation. In particular, check out the Guides, API Reference, and Advanced Tutorials sections in the sidebar.

## 💫 Deploy
Deploy to Netlify

