# MySQL-Workbench
[![](https://images.microbadger.com/badges/image/openkbs/mysql-workbench.svg)](https://microbadger.com/images/openkbs/mysql-workbench "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/openkbs/mysql-workbench.svg)](https://microbadger.com/images/openkbs/mysql-workbench "Get your own version badge on microbadger.com")

* MySQL-Workbench 6.3 + Java 8 (1.8.0_181) JDK + Maven 3.5.0 + Python 2.7.2/3.5.2 + X11 (display GUI)

# NOTICE:
* Due to unresolved errors in running mysql-workbench v8.0.12 caused by key cache issue, we now back track to previous build version 6.3.10

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

# Build (optional)
If you want build your local docker image instead of pulling from openkb, then do this.
```
./build.sh
```
# Configuration (optional)
The docker container will assume there is a default /workspace folder. So, it is suggested to mount host <some_path>/workspace to map to the container's internal workspace folder. 

The default, './run.sh', will use/create the local folder, "$HOME/data-docker/mysql-workbench/workspace" to map into the docker's internal "/workspace" folder.

The above approach will ensure all your projects created in the container's "/workspace" folder is "persistent" in your local folder, i.e., "$HOME/data-docker/mysql-workbench/workspace"

# See also similar docker-based SQL IDE
* [Sqlectron SQL GUI at openkbs/sqlectron-docker](https://hub.docker.com/r/openkbs/sqlectron-docker/)
* [Mysql-Workbench at openkbs/mysql-workbench](https://hub.docker.com/r/openkbs/mysql-workbench/)
* [PgAdmin4 for PostgreSQL at openkbs/pgadmin-docker](https://hub.docker.com/r/openkbs/pgadmin-docker/)

