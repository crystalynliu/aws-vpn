# Setup VPN Using AWS

## Create VPN in AWS
```bash
export AWS_DEFAULT_REGION=<region>
export AWS_SECRET_ACCESS_KEY=<secret key>
export AWS_ACCESS_KEY_ID=<access key>
make vpn_without_elastic_ip
```
## Setup VPN on computer
please set the host to *local.personal.vpn*

## Connect VPN
+ reset vpn ip address
```bash
sudo AWS_DEFAULT_REGION=<region> AWS_ACCESS_KEY_ID=<access key> AWS_SECRET_ACCESS_KEY=<secret access key> make reset_vpn_ip
```
+ connect the vpn
