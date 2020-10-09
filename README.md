# Sepi
## prepare nodejs server for production and manage your firewall

-----------------------------------------------
This script for install mongodb and nodejs and nodemon in centos/ubuntu machines

### Install setup
```bash
git clone https://github.com/SepehrImanian/sepi.git
cd sepi
chmod 755 setup
./setup centos
```

Script | Usage
------------- | --------------
`./setup --help,-h` | help command
`./setup centos` | for install in centos machine
`./setup ubuntu` | for install in ubuntu machine

----------------------------------------

This script help you to *open/close/status* of firewall ports in centos or ubuntu distribution

### Install sepi
```bash
git clone https://github.com/SepehrImanian/sepi.git
cd sepi
chmod 755 sepi
./sepi install
```

For using sepi the following table help you to find out


Script | Usage
------------- | --------------
`-h,--help`                         | help command
`install`                           | install sepi in path
`ubuntu/centos`                     | which distribution do you want use centos or ubuntu
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

