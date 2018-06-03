# MySQL-Workbench

* MySQL-Workbench + Java 8 (1.8.0_172) JDK + Maven 3.5.0 + Python 2.7.2/3.5.2 + X11 (display GUI)

# Clone the github of MYSQL-workbench
```
git clone git@github.com:DrSnowbird/mysql-workbench.git
cd mysql-workbench.git
```
or 
```
git clone https://github.com/DrSnowbird/mysql-workbench.git
cd mysql-workbench.git
```
# Run (Recommeded for easy start-up)
```
./run.sh
```

# Build (optionals)
If you want build your local docker image instead of pulling from openkb, then do this.
```
./build.sh
```
# Configuration (optional)
The docker container will assume there is a default /workspace folder. So, it is suggested to mount host <some_path>/workspace to map to the container's internal workspace folder. 

The default, './run.sh', will use/create the local folder, "$HOME/data-docker/mysql-workbench/workspace" to map into the docker's internal "/workspace" folder.

The above approach will ensure all your projects created in the container's "/workspace" folder is "persistent" in your local folder, i.e., "$HOME/data-docker/mysql-workbench/workspace"

# See also
* [openkbs/pgadmin-docker](https://hub.docker.com/r/openkbs/pgadmin-docker/)
