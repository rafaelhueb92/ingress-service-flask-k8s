minikube stop
minikube delete

echo "Removing old files of minikube"

rm -rf ~/.minikube
rm -rf ~/.kube
minikube start
