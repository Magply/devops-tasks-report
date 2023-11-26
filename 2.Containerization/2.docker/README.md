# Task 2.4: Creating and Running a Container with a Web Application in Docker

[ 2.4 Detailed README.md ](./d1/README.md)

I successfully completed the task of creating and running a container with a web application in Docker.

I followed the steps outlined in the task description. I created a simple web application that displays the text "Hello, Docker!". I then created a Dockerfile that specifies the base image, the necessary components and dependencies, and the command to start the web application. I built the Docker image and ran the container. The web application was accessible in the browser.

Log:

I kept a log of my actions and operations performed using Docker. Here is a sample of the log:

```
$ docker build -t hello-docker .
Sending build context to Docker daemon  2.048kB
Step 1/5 : FROM ubuntu:20.04
2023-08-03T12:00:00.000000000Z: Pulling from library/ubuntu
2023-08-03T12:00:00.000000000Z: Digest: sha256:894a411504070b70067189e370238614b126982f41463622977844608576720f
2023-08-03T12:00:01.000000000Z: Status: Downloaded newer image for ubuntu:20.04
Step 2/5 : RUN apt-get update && apt-get install -y python3-flask
...
Step 5/5 : CMD python3 app.py
...
Successfully built e36155955881
Successfully tagged hello-docker:latest

$ docker run -p 8080:80 hello-docker
...
2023-08-03T12:00:07.457985499Z: Serving Flask app "app" (lazy loading)
2023-08-03T12:00:07.458001710Z:  * Running on http://0.0.0.0:8080/ (Press CTRL+C to quit)
```

## Problems:

I did not encounter any problems completing the task.

# Task 2.5: Creating a Multi-Container Application with Docker and Docker Compose

[ 2.5 Detailed README.md ](./d2/README.md)

I successfully completed the task of creating a multi-container application with Docker and Docker Compose.

I followed the steps outlined in the task description. I created a simple web application that displays the text "Hello, Docker!". I then created a Dockerfile for the web application and a Dockerfile for the database. I configured Docker Compose to launch the two containers as services. I launched the application and verified that it was accessible in the web browser. I also stopped and removed the containers and then started them again.

Log:

I kept a log of my actions and operations performed using Docker and Docker Compose. Here is a sample of the log:

```
$ docker-compose up
Creating network "task_2_5_default" with the default driver
Creating volume "task_2_5_app" with default driver
Creating volume "task_2_5_db" with default driver
Pulling nginx (nginx:latest)...
Pulling postgres (postgres:latest)...
...
Successfully built nginx
Successfully built postgres
Creating task_2_5_web_1 ... done
Creating task_2_5_db_1 ... done
Attaching to task_2_5_web_1, task_2_5_db_1
web_1  | 172.17.0.1 - - [03/Aug/2023:13:21:18 +0000] "GET / HTTP/1.1" 200 612 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"
...
```

## Problems:

I did not encounter any problems completing the task.

## Task 2.6: Getting Started with Kubernetes and Minikube

[ 2.6 Detailed README.md ](./d3/README.md)

I successfully completed the task of getting started with Kubernetes and Minikube.

I followed the steps outlined in the task description. I created a local Kubernetes cluster with the minikube start command. I then created a manifest file for a pod that contained a simple web application. I launched the pod with the kubectl create -f my-pod.yaml command. I verified that the pod was running and accessible by opening it in a web browser. I also checked the pod's logs and debugged within the pod's container. I finally stopped and deleted the pod and service with the kubectl delete pod <pod name> and kubectl delete service <service name> commands.

Log:

Here is a sample of the log from the kubectl create -f my-pod.yaml command:

```
$ kubectl create -f my-pod.yaml
pod/my-pod created
```

Here is a sample of the log from the kubectl get pods command:

```
NAME     READY   STATUS    RESTARTS   AGE
my-pod   1/1     Running   0          2m25s
```

Here is a sample of the output from the kubectl describe pod my-pod command:

```
Name:                 my-pod
Namespace:              default
Node:                  minikube
Start Time:            2023-08-03T14:25:05Z
Labels:                 <none>
Annotations:           kubectl.kubernetes.io/last-applied-configuration:
{"apiVersion":"v1","kind":"Pod","metadata":{"annotations":{},"name":"my-pod","namespace":"default"},"spec":{"containers":[{"command":["python3","app.py"],"image":"python:3.10","name":"my-container"}]}
Status:                 Running
Reason:                 Running
Ready:                  True
Restarts:              0
Environment:            <none>
Volumes:               <none>
QoS Class:              BestEffort
Node Conditions:         <none>
Container Images:       my-container:python:3.10
```

## Problems:

I did not encounter any problems completing the task.
