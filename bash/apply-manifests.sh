for bash_files in ./manifests/*
do
    echo "Applying file $bash_files"
    kubectl apply -f $bash_files
done
minikube addons enable ingress
echo "127.0.0.1 simple-flask.local" | sudo tee -a /etc/hosts
minikube tunnel
