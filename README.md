# Setup VPN Using AWS
This repo is built based on [AWS-VPN-Server-Setup](https://github.com/webdigi/AWS-VPN-Server-Setup) 
* This repo can create vpn server on AWS with AutoScalingGroup
* The vpn server will running between 19:00 GTM+8 and 22:00 GTM+8 every day
* You can start or stop the vpn server manually
* You can simple use ssh tunnel as proxy

## Create VPN in AWS
1. Modify the file *parameter_without_elastic_ip.json*
   * Speed

     Network Speed of VPN Server. Standard.VPN-Free should do for most browsing and video.

     Support Values
      * Standard.VPN-Free,
      * High.Speed.VPN-Paid,
      * Ultra.High.Speed.VPN-Paid

   * Username

     VPN user name 
   * VPNPassword

     VPN password
   * VPNPhrase

     Passphrase for IPSEC PSK 
   * VPNSubnets

     The Subnet to start instance
   * VPNVpcId

     The VPC to start instance
   * KeyName

     The key pair name used by instance
2. Create the stack
```bash
AWS_DEFAULT_REGION=<region> AWS_ACCESS_KEY_ID=<access key> AWS_SECRET_ACCESS_KEY=<secret access key> make deploy
```
## Setup VPN on computer
please set the host to *local.personal.vpn*

## Connect VPN
1. reset vpn ip address
```bash
sudo AWS_DEFAULT_REGION=<region> AWS_ACCESS_KEY_ID=<access key> AWS_SECRET_ACCESS_KEY=<secret access key> make reset
```
2. connect the vpn

## Stop VPN server manually
```bash
AWS_ACCESS_KEY_ID=<access key> AWS_SECRET_ACCESS_KEY=<secret access key> make stop
```
## Start VPN server manually
```bash
AWS_ACCESS_KEY_ID=<access key> AWS_SECRET_ACCESS_KEY=<secret access key> make start
```
## Start SSH tunnel on port 15888
```bash
sudo AWS_DEFAULT_REGION=<region> AWS_ACCESS_KEY_ID=<access key> AWS_SECRET_ACCESS_KEY=<secret access key> make start_tunnel
```
## Stop SSH tunnel
```bash
sudo make stop_tunnel
```
## Check SSH tunnel status
```bash
sudo make check_tunnel
```
