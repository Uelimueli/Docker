# Modul-300 / Docker
Create first Docker Containers for LB2
UeliMueli

## Outline
1. Description
2. Configuration
4. Evaluation

## Description
### Required programs:
* Install [vagrant](https://www.vagrantup.com/downloads.html "Vagrant Download Link")
* Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads "VirtualBox Download Link")
* Install Shell [GIT](https://git-scm.com/downloads "GIT Download Link")
* Install Ubuntu Server [Ubuntu](https://www.ubuntu.com/download/server "Ubuntu Download Link")
* Install Docker [Docker](https://www.ubuntu.com/download/server "Ubuntu Download Link")

### Network plan
![Logical Network Diagram](https://github.com/Uelimueli/Docker/blob/master/Netzwerkplan.png)

## Configuration
### Docker File configuration
The whole programm configuration is only on this one file.
After you created a Folder with a from you choosen name, you have to create a vagrant file. in this file you can past the following code.
```Docker File

# Installieren von der MongoDB in ein Container per Docker

FROM ubuntu
MAINTAINER Michael Gerber

RUN apt-get update
RUN apt-get -y install apt-utils
RUN apt-get -y install mongodb-10gen

#RUN der Konfiguration des Container
COPY mongodb.conf /etc/mongodb.conf

CMD ["/usr/bin/mongod", "--config", "/etc/mongodb.conf"] 
```
After you have saved this file, you can change the directory in the shell to the folder. 
You start the Own Cloud configuration with Vagrant up.

## Test
| Step | Description                               | Does it work |
| ----:|:-----------------------------------------:| ------------:|
| 1    | Testing connection of the MySQL Database. | Yes |
| 2    |  |   $12 |
| 3    | are neat      |    $1 |

## Evaluation
The work with Vagrant, was my first touch with automatic installation and I learned a lot of new things. I have now the ability to setup new systems with a self created vagrant file.
