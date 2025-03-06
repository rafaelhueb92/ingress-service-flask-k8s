echo "Add the Ingress Controller Helm Repository"

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

echo "*******************************************************************"
echo "Install the NGINX Ingress Controller"

helm install nginx-ingress ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace