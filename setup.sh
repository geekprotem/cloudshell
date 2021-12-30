
sudo yum install openssl -y

mkdir -p ~/.local/bin

if [ ! -f ~/.local/bin/kubectl ]
then
    curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.13/bin/linux/amd64/kubectl
    chmod +x kubectl
fi
alias kubectl=~/.local/bin/kubectl
kubectl version


# curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
# helm version
