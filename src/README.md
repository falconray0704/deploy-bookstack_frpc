# 1. Configurations for initialization

## 1.1 Specify following variables in `.env` file for all data storage of bookstack application which including database.

* `BOOKSTACK_DATAS_DIR` : Datas root directory.

## 1.2 Specify following variables in `.env` file for accessing of database.

* `MYSQL_DATABASE` : Name of database for bookstack.
* `MYSQL_USER` : User name for database access by bookstack app.
* `MYSQL_PASSWORD` : Password of `MYSQL_USER` .
* `MYSQL_ROOT_PASSWORD` : Password of Root for database initialization.

## 1.3 Specify following variables in `.env` file for bookstack domain.

* `BOOKSTACK_APP_URL` : bookstack domain, eg: https://bookstack.example.com

## 1.4 Specify following variables in `cfgs/frpc.ini` file for frp.
Just refer to official document.
The most required variables are:

* `server_addr` : Public IP address of your server.
* `server_port` : Port of frps listens for frpc connection.

* `token` : token for authentication between frpc and frps, must be same as Frps's configuration.
* `subdomain` : 3rd subdomain for frps routing (eg: drawio for bookstack.domain.com).
* `custom_domains` : full domain for frps routing (eg: bookstack.domain.com).


# 2. Initial environments for first time booting
```bash
./1_init.sh
```

# 3. Install certificates

Install certificates for tls between frpc and frps to `$INSTALL_ROOT_PATH`/`SERVER_NAME`/`CERTIFICATES_DIR` which defined in `.env` file.


## 3.1 Obtain certificates

Refer `https://github.com/falconray0704/deploy-bookstack_frps/blob/main/src/README.md` to generate selfsigned certificates.
Install forllowing file:

* `client.crt`
* `client.key`
* `rootCA.crt`

# 4. Launch:

```bash
docker compose up -d
```

# 5. Tips
PHP has upload limitation of upload large file, fix it with following instructions.

In `datas/bookstack_app_data/php/php-local.ini`, revise following variables to your demand


```php
upload_max_filesize = 100M
post_max_size = 100M

```
