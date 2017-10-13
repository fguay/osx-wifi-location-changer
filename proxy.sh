#!/usr/bin/env bash


if scutil --proxy | grep -q 'ProxyAutoConfigEnable : 1'
then 
    export proxy_host="bluecoatproxy.cpgrp.root.local"
    export proxy_port="8080"
    export http_proxy="http://bluecoatproxy.cpgrp.root.local:8080/"
    export https_proxy="http://bluecoatproxy.cpgrp.root.local:8080/"
    export HTTP_PROXY="$http_proxy"
    export HTTPS_PROXY="$http_proxy"
    export no_proxy="localhost,127.0.0.0/8,172.30.0.0/24,194.4.237.58,frcp03vin0013.cpdev.local,frcp03vdv0073.cpdev.local,fo1-pp.app.vod.cdn,fo2-pp.app.vod.cdn,fo3-pp.app.vod.cdn,db-pp.app.vod.cdn,db1-pp.app.vod.cdn,db2-pp.app.vod.cdn,db3-pp.app.vod.cdn,db-rec-1.app.vod.cdn,cvs1.app.vod.cdn,gesc0spacewlk01.msdb.coprod.cdn,gesc0report01.msdb.coprod.cdn,192.168.236.199,192.168.236.19,192.168.136.68,lb-crapaud-vabf.test.cdn,172.30.70.10,ldap.canal-bis.com:636,quova-pp.app.vod.cdn,cas01.app-g3.vod.cdn,dvssoft.app-g3.vod.cdn,lb-prdrm-vabf.backservices.coprod.cdn,lb-mdrm-vabf.backservices.coprod.cdn,10.251.84.11,192.168.139.1,10.100.0.0/8,10.200.0.0/8,10.210.0.0/8,10.220.0.0/8,10.230.0.0/8,10.240.0.0/8,10.250.0.0/8,172.19.0.0/8,172.23.32.0/20,172.23.103.192/26,172.23.38.161,172.23.38.192,c-infra-ns03.mg.vabf.coprod.eu-west-1.aws,172.30.5.17,172.30.5.16,/var/run/docker.sock,mg.int.coprod.eu-west-1.aws,mg.prod.eu-west-1.aws"
    export NO_PROXY="$no_proxy"
    export SBT_OPTS="-Dfile.encoding=UTF8 -Dsbt.override.build.repos=true  -Dhttp.proxyHost=bluecoatproxy.cpgrp.root.local -Dhttp.proxyPort=8080 -Dhttp.nonProxyHosts=localhost|*.mg.prod.eu-west-1.aws|*.mg.int.coprod.eu-west-1.aws|127.*|[::1]|172.30.95.*|172.23.*|atgbo-n7|172.17.*|172.30.5.16|172.30.5.17|lb-prdrm-vabf.backservices.coprod.cdn|lb-mdrm-vabf.backservices.coprod.cdn"

else
    unset proxy_host
    unset proxy_port
    unset http_proxy 
    unset https_proxy
    unset HTTP_PROXY
    unset HTTPS_PROXY
    unset no_proxy
    unset NO_PROXY
    export SBT_OPTS="-Dfile.encoding=UTF8 -Dsbt.override.build.repos=true"
fi
