#kubectl run temp-debug-pod --image=alpine --restart=Never --namespace=dev --command -- sleep 3600
#kubectl exec -it temp-debug-pod --namespace=dev -- sh

# wget -qO- http://simple-flask-svc:5001

k run tmp -n dev --restart=Never --rm --image=busybox -i -- wget -qO- http://simple-flask-svc:5001