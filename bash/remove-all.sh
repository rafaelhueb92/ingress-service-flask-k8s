kubectl delete ingress simple-flask-ingress -n dev
kubectl delete svc simple-flask-svc -n dev
kubectl delete po simple-flask -n dev
helm uninstall nginx-ingress -n ingress-nginx
kubectl delete namespace ingress-nginx