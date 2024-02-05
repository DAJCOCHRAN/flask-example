# flask-example

## Server
To run the server run the following commands:
```shell
# create conda environment
conda env create -f .\environment.yaml
# activate conda environment
conda activate flask-example
# run the flask server with conda environment
python flask-api-server.py
```

Expected Output:
```shell
(flask-example) PS D:\JHU\GRADER\projects\flask-example> python .\flask-api-server.py
 * Serving Flask app 'flask-api-server'
 * Debug mode: on
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on http://127.0.0.1:8000
Press CTRL+C to quit
 * Restarting with watchdog (windowsapi)
 * Debugger is active!
 * Debugger PIN: 497-655-526
```

## Clients
There are 3 client scripts to choose from based on your environment setup:
### 1. Windows (Powershell) (Local)
use the ps-client.ps1 script in powershell to view a client script example for different requests.

PowerShell
```shell
./ps-client.ps1
```

### 2. Linux (Local)
use the linux-bash-client.ps1 script in Linux Bash to view a client script example for different requests.

Bash
```shell
bash ./linux-bash-client.sh
```
### 3. Linux (Container)
use the docker-internal-linux-client script in powershell to view a client script example for different requests.

Bash In Docker Container
```shell
./docker-internal-linux-client.sh
```