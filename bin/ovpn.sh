#!/usr/bin/env bash

DIRNAME=`dirname "$0"`
source ${DIRNAME}/../.env

docker run --rm -v $OVPN_DATA:/etc/openvpn \
    kylemanna/openvpn ovpn_genconfig -u udp://${DOMAIN}
docker run -v $OVPN_DATA:/etc/openvpn --rm -it \
    kylemanna/openvpn ovpn_initpki
docker run -v $OVPN_DATA:/etc/openvpn --rm -it \
    kylemanna/openvpn easyrsa build-client-full vpnclient nopass
docker run -v $OVPN_DATA:/etc/openvpn --rm \
    kylemanna/openvpn ovpn_getclient vpnclient > config.ovpn
