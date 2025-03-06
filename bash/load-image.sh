IMAGE_NAME="simple-flask"

docker build --no-cache -t $IMAGE_NAME ./app
# docker run -p 9000:5001 simple-flask

echo "Loading the image into minikube."

minikube image load $IMAGE_NAME:latest

# echo "Running pod"
# kubectl run my-pod --image=my-local-image:latest --image-pull-policy=Never
