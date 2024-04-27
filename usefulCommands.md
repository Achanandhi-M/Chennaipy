

```markdown
# Commands Cheat Sheet

## Commands for Building Docker Image

```bash
$ docker build -t <app-name> .
$ docker run -p 8000:8000 <image-name>
$ docker tag my-django-app-03 achanandhi/chennaipy:v1
$ sudo docker push achanandhi/chennaipy:v1 
```

## Commands for Creating and Running Django

```bash
$ django-admin startproject <project-name>
$ python manage.py startapp <name>
$ python manage.py makemigrations
$ python manage.py migrate
$ python manage.py runserver
$ python manage.py runserver 8001
```

## Command for Creating DigitalOcean Kubernetes Service

```bash
$ doctl kubernetes cluster create my-k8s-cluster --region blr1 --size s-2vcpu-4gb --count 3  
$ doctl kubernetes delete cluster my-k8s-cluster
```

## Commands for Kubernetes

```bash
$ kubectl get pods
$ kubectl get svc
$ kubectl get deploy
$ kubectl apply -f <name>
```

---

