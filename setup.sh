
if [ ! -f /usr/bin/openssl ]
then
    sudo yum install openssl -y
fi

pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

mkdir -p ~/.local/bin

##### kubectl
if [ ! -f ~/.local/bin/kubectl ]
then
    curl -fsSL -o ~/.local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.18.13/bin/linux/amd64/kubectl
fi
chmod +x ~/.local/bin/kubectl
alias kubectl=~/.local/bin/kubectl
kubectl version

##### helm
if [ ! -f ~/.local/bin/get_helm.sh ]
then
    curl -fsSL -o ~/.local/bin/get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
fi

if [ ! -f /usr/local/bin/helm ]
then
    sh ~/.local/bin/get_helm.sh
fi
helm version

cp bin/* ~/.local/bin/
pathadd(~/.local/bin)
# alias select_cluster='sh ~/.local/bin/select_cluster.sh'
