## why docker 

- solve problem of "it works in my machine" .Docker solve problem of dependencies including libs and system setting.
- container solve problem of dependencies installation because it have all dependencies already exist.
- isolation: containers run independently each container have its own dependencies and solve conflict between applications .
- os combitablty like if for example i have ubuntu 24.04 on my and want to work with ros2 humble so i will need ubuntu 22.04 


## points to discover
- how hypervisor work
- is hypervisor slowing the process ?


## primitive docker commands to start docker container
### to make container from image ,then start conainer  
```bash
- docker pull  hello-world
- docker create --name mycontainer  hello-world
- docker start -attach mycontainer # where -a, --attach               Attach STDOUT/STDERR and forward signals
```
if you replace hello-world with ubuntu:22.04  will no output as ubuntu execute /bin/bash and exit

```bash
 docker pull ubuntu:22.04
    docker create --name mycontainer ubuntu:22.04  bash -c "while true; do  sleep 1; done"
    docker start  mycontainer 
    docker attach mycontainer
    docker stop mycontainer
    docker rm mycontainer
 docker image rm  ubuntu:22.04
```
```bash
docker run -it --name mycontainer ubuntu:22.04  # default command or enterypoint 
docker run -it --name mycontainer ubuntu:22.04 ls
```