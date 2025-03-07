echo "Installing argocd"

helm repo add argo https://argoproj.github.io/argo-helm
helm repo update

kubectl create ns argocd

helm install argocd argo/argo-cd -n argocd --set server.service.type=LoadBalancer

kubectl apply -f ingress.yaml

echo "127.0.0.1 argocd.local" | sudo tee -a /etc/hosts

kubectl get all -n argocd

