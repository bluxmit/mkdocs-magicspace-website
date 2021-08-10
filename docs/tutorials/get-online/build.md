

The first thing to do - is to build static documentation website from our project. Cd to the Mkdocs project folder, and execute 

```
mkdocs build -d /home/static-server/my-website
```

Static HTML website was built, and you can use Static File Server (a tool that comes installed in the Mkdocs-MagicSpace) to view 
the ready documentation.

![Placeholder](img/static-website.gif){style="height: 100%; width: 100%; border-radius: 5px; margin-left: auto; margin-right: auto; display: block;" loading=lazy}


Done! Your static documentation website is ready. You can deploy it on any service that allows to serve HTML websites.   

!!! info
    You don't really need Mkdocs-MagicSpace to serve a static HTML website. You can publish it on any web hosting service. 
    Mkdocs-MagicSpace can also do that. In fact, Mkdocs-MagicSpace comes together with the server for static websites (Static 
    File Server). In this tutorial we will explain how to do that.



