# Kubernetes. Task 6
Знакомство с Kubernetes и Minikube


1. minikube start, kubectl cluster-info
![alt text](./images/start.png)

2. Создан файл манифеста для пода my-pod.yaml

3. kubectl create -f my-pod.yaml

kubectl get pods, kubectl get services
![alt text](./images/pod servis.png)

kubectl describe pod my-pod
![alt text](./images/describe.png)

kubectl logs my-pod
![alt text](./images/logs.png)

4. kubectl delete pod my-pod
kubectl delete service kubernetes


5. minikube stop
![alt text](./images/stop.png)

