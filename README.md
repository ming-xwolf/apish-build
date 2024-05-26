# apish-build - 3.5.0

## go to ubuntu 24.04
```shell
multipass shell vm1
```

## Installation via DEB repository#

Currently the only DEB repository supported by APISIX is Debian 11 (Bullseye) and supports both amd64 and arm64 architectures.

```shell
# amd64
echo "deb http://openresty.org/package/debian bullseye openresty" | sudo tee /etc/apt/sources.list.d/openresty.list
wget -O - https://openresty.org/package/pubkey.gpg | sudo apt-key add -
wget -O - http://repos.apiseven.com/pubkey.gpg | sudo apt-key add -
echo "deb http://repos.apiseven.com/packages/debian bullseye main" | sudo tee /etc/apt/sources.list.d/apisix.list

# arm64
echo "deb http://openresty.org/package/arm64/debian bullseye openresty" | sudo tee /etc/apt/sources.list.d/openresty.list
wget -O - https://openresty.org/package/pubkey.gpg | sudo apt-key add -
wget -O - http://repos.apiseven.com/pubkey.gpg | sudo apt-key add -
echo "deb http://repos.apiseven.com/packages/arm64/debian bullseye main" | sudo tee /etc/apt/sources.list.d/apisix.list
Then, to install APISIX, run:

sudo apt update
sudo apt install -y apisix=3.5.0-0

```
