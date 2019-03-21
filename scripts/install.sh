#!/usr/bin/env bash
#
# Install Kubernetes related packaging
#
apt-key adv --fetch-keys https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
apt-get install -y kubectl && rm -rf /var/lib/apt/lists/*

curl -o helm_install.sh https://raw.githubusercontent.com/helm/helm/v2.13.0/scripts/get \
    && chmod 700 helm_install.sh
./helm_install.sh && rm -f helm_install.sh