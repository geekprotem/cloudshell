
sudo yum install openssl -y

mkdir -p ~/.local/bin

if [ ! -f ~/.local/bin/kubectl ]
then
    curl -LO -o ~/.local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.18.13/bin/linux/amd64/kubectl
    chmod +x ~/.local/bin/kubectl
fi
alias kubectl=~/.local/bin/kubectl
kubectl version

if [ ! -f ~/.local/bin/get_helm.sh ]
then
    curl -fsSL -o ~/.local/bin/get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
done
if [ ! -f /usr/local/bin/helm ]
then
    sh ~/.local/bin/get_helm.sh
done

