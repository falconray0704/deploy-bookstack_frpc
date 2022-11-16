# 1. Configure of frpc serving for drawio in LAN

## 1.1 Specify following variables in `.env` file for your domain.


## 1.2 Specify following variables in `cfgs/frpc.ini` file for your domain.
Just refer to official document.
The most required variables are:

* `token` : token for authentication between frpc and frps.
* `subdomain` : 3rd subdomain for frps routing (eg: drawio for bookstack.domain.com).
* `custom_domains` : full domain for frps routing (eg: bookstack.domain.com).


# 2. Install certificates

Install certificates for tls between frpc and frps to `$INSTALL_ROOT_PATH`/`INSTALL_DIR`/`CERTIFICATES_DIR` which defined in `.env` file. 

## 2.1 Obtain certificates

Refer `https://github.com/falconray0704/deploy-drawio_frps/blob/main/src/README.md` to generate selfsigned certificates.
Install forllowing file:

* `client.crt`
* `client.key`
* `rootCA.crt`

# 3. Launch:

```bash
docker compose up -d
```

# 4. Backup
```bash

docker exec -it -u root bookstack_apache_db /bin/bash
mysqldump -u root -p bookstackapp > /bookstack_backup/bookstackapp.backup.sql

docker exec -it -u root bookstack_apache /bin/bash
tar -czf /bookstack_backup/bookstackapp-files-backup.tar.gz .env public/uploads storage/uploads
```

# 5. Restore
```bash
docker exec -it -u root bookstack_apache_db /bin/bash
mysqldump -u root -p bookstackapp < /bookstack_backup/bookstackapp.backup.sql

docker exec -it -u root bookstack_apache /bin/bash
tar -xzf /bookstack_backup/bookstackapp-files-backup.tar.gz -C ./
```
