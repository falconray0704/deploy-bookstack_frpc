# deploy-bookstack_frpc
Deploy bookstack-vhost in LAN with frpc by docker compose.

If you want to customize the location of deploment, configure following variables:

* `INSTALL_ROOT_PATH` :  Parent path for deployment.
* `INSTALL_DIR`: Directory for deployment at INSTALL_ROOT_PATH .

```bash
./run.sh 
Usage:
./run.sh -c <cmd> -l "<item list>"
eg:
./run.sh -c deploy -l "bookstack_frpc"
Supported cmd:
deploy
Supported items:
bookstack_frpc
```

