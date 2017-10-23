Supported tags and respective Dockerfile links

4.7.1-windowsservercore-10.0.14393.1593, 4.7.1-windowsservercore, 4.7.1, latest (4.7.1/Dockerfile)
4.7-windowsservercore-10.0.14393.1593, 4.7-windowsservercore, 4.7 (4.7/Dockerfile)
4.6.2-windowsservercore-10.0.14393.1593, 4.6.2-windowsservercore, 4.6.2 (4.6.2/Dockerfile)
3.5-windowsservercore-10.0.14393.1593,3.5-windowsservercore, 3.5 (3.5/Dockerfile)
These images are updated via pull requests to the microsoft/aspnet-docker GitHub repo.

Downloads from Docker Hub Stars on Docker Hub

What is ASP.NET

ASP.NET is a high productivity framework for building Web Applications using Web Forms, MVC, Web API and SignalR.

This repository contains Dockerfile definitions for ASP.NET Docker images. These images use the IIS image as their base.

This image contains:

Windows Server Core as the base OS
IIS 10 as Web Server
.NET Framework (multiple versions available)
.NET Extensibility for IIS
How to use these Images

Copy 4.7\sample\Dockerfile to your app directory. You would then be able to build and run the site from the app directory.

$ docker build -t aspnet-site --build-arg site_root=/ .
$ docker run -d -p 8000:80 --name my-running-site aspnet-site
