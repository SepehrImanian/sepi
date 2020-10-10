# Sepi
## Prepare nodejs server for production and manage your firewall
### All things you need after buy single host :)

-----------------------------------------------
This script for installing **mongodb , nodejs , nodemon , pm2** in centos or ubuntu machine/server but you can choose which one of them do you want to install

### Getstart "setup" script
```bash
git clone https://github.com/SepehrImanian/sepi.git
cd sepi
chmod 755 setup
./setup centos install
```

> if you install *mongo* or *nodejs* automatically **curl** , **wget** , **vim**  install as dependency

Script | Usage
------------- | --------------
`./setup --help,-h` | help command
`./setup centos install` | for install **mongodb** , **nodejs** , **pm2** in centos machine/server
`./setup ubuntu install` | for install for install **mongodb** , **nodejs** , **pm2** in ubuntu machine/server
`./setup ubuntu/centos mongodb` | for install **mongodb** in ubuntu/centos machine/server
`./setup ubuntu/centos nodejs` | for install **nodejs** in ubuntu/centos machine/server
`./setup ubuntu/centos pm2` | for install **pm2** in ubuntu/centos machine/server (automatically install nodejs before install pm2)
`./setup ubuntu/centos nodemon` | for install **nodemon** in ubuntu/centos machine/server (automatically install nodejs before install nodemon)
----------------------------------------

This script help you to *open/close/status* of firewall ports in centos or ubuntu distribution

### Getstart "sepi" script
```bash
git clone https://github.com/SepehrImanian/sepi.git
cd sepi
chmod 755 sepi
./sepi install
sepi ubuntu/centos install
```

For using sepi the following table help you to find out

Script | Usage
------------- | --------------
`-h,--help`                         | help command
`install`                           | install sepi in path
`ubuntu/centos`                     | which distribution do you want to use centos or ubuntu
`ubuntu/centos install`             | for install centos or ubuntu dependency
`ubuntu/centos status`              | status of open or close ports of firewall
`ubuntu/centos port open port_number` | for open port of this machine/server
`ubuntu/centos port close port_number` | for colse port of this machine/server


Examples:

Distribution | protocol/port
------------- | --------------
ubuntu | http=80 , https=443
centos | http=80/tcp , https=443/tcp (tcp or udp protocol)

```bash
sepi centos port open 80/tcp
sepi centos status

sepi centos port close 443/tcp
sepi centos status

sepi ubuntu port open 443
sepi ubuntu status

sepi ubuntu port close 80
sepi ubuntu status
```

