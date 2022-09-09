[![Repo-GitHub](https://img.shields.io/badge/dynamic/xml?color=gold&label=GitHub%20module.xml&prefix=ver.&query=%2F%2FVersion&url=https%3A%2F%2Fraw.githubusercontent.com%2Fsergeymi37%2Fappmsw-banks-ru%2Fmaster%2Fmodule.xml)](https://raw.githubusercontent.com/sergeymi37/appmsw-banks-ru/master/module.xml)
 
![OEX-zapm](https://img.shields.io/badge/dynamic/json?url=https:%2F%2Fpm.community.intersystems.com%2Fpackages%2Fappmsw-banks-ru%2F&label=ZPM-pm.community.intersystems.com&query=$.version&color=green&prefix=appmsw-banks-ru)
 
[![Docker-ports](https://img.shields.io/badge/dynamic/yaml?color=blue&label=docker-compose&prefix=ports%20-%20&query=%24.services.iris.ports&url=https%3A%2F%2Fraw.githubusercontent.com%2Fsergeymi37%2Fappmsw-banks-ru%2Fmaster%2Fdocker-compose.yml)](https://raw.githubusercontent.com/sergeymi37/appmsw-banks-ru/master/docker-compose.yml)
 
## appmsw-banks-ru

An example of working with the service for updating the list of Russian banks

[![Quality Gate Status](https://community.objectscriptquality.com/api/project_badges/measure?project=intersystems_iris_community%2Fappmsw-banks-ru&metric=alert_status)](https://community.objectscriptquality.com/dashboard?id=intersystems_iris_community%2Fappmsw-banks-ru)
 [![Demo](https://img.shields.io/badge/Demo%20on-GCR-black)](https://banks.demo.community.intersystems.com/apptoolsrest/a/info&class=appmsw.banks.info)

## What's new

Added fileserver for downloading generated xlsx files

## Installation with ZPM

If ZPM the current instance is not installed, then in one line you can install the latest version of ZPM.
```
s r=##class(%Net.HttpRequest).%New(),proxy=$System.Util.GetEnviron("https_proxy") Do ##class(%Net.URLParser).Parse(proxy,.pr) s:$G(pr("host"))'="" r.ProxyHTTPS=1,r.ProxyTunnel=1,r.ProxyPort=pr("port"),r.ProxyServer=pr("host") s:$G(pr("username"))'=""&&($G(pr("password"))'="") r.ProxyAuthorization="Basic "_$system.Encryption.Base64Encode(pr("username")_":"_pr("password")) set r.Server="pm.community.intersystems.com",r.SSLConfiguration="ISC.FeatureTracker.SSL.Config" d r.Get("/packages/zpm/latest/installer"),$system.OBJ.LoadStream(r.HttpResponse.Data,"c")
```
If ZPM is installed, then `appmsw-banks-ru` can be set with the command
```
zpm:USER>install appmsw-banks-ru
```
## Installation with Docker

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.

## Installation
Clone/git pull the repo into any local directory

```
$ git clone https://github.com/SergeyMi37/appmsw-banks-ru
```

Open the terminal in this directory and run:

```
$ docker-compose build
```

3. Run the IRIS container with your project:

```
$ docker-compose up -d
```

## How to Test it
Open link: http://localhost:52663/apptoolsrest/a/info&class=appmsw-banks-ru

![Link](https://raw.githubusercontent.com/sergeymi37/appmsw-banks-ru/master/doc/Screenshot_51.png)
