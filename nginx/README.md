# NGINX on Kubernetes

This module demonstrates the deployment and management of an NGINX application on Kubernetes using various workload resources, networking components, and persistent storage.

---

## 📚 Concepts Covered

- Pod
- Deployment
- ReplicaSet
- Service
- Namespace
- Ingress
- Job
- CronJob
- DaemonSet
- Persistent Volume (PV)
- Persistent Volume Claim (PVC)

---

## 📂 Files

| File | Description |
|------|-------------|
| pod.yml | Creates a standalone NGINX Pod |
| deployment.yml | Deploys NGINX using a Deployment |
| replicasets.yml | Demonstrates ReplicaSet |
| service.yml | Exposes the NGINX application |
| namespace.yml | Creates a dedicated namespace |
| ingress.yml | Configures Ingress routing |
| daemonsets.yml | Deploys an NGINX Pod on every node |
| job.yml | Runs a one-time Kubernetes Job |
| cron-job.yml | Runs scheduled Jobs |
| persistentvolume.yml | Creates a Persistent Volume |
| persistentVolumeClaim.yml | Creates a Persistent Volume Claim |

---

## 🏗 Architecture

```text
Namespace
    │
    ├── Pod
    ├── Deployment
    │      │
    │      └── ReplicaSet
    │
    ├── Service
    │
    ├── Ingress
    │
    ├── Persistent Volume
    │
    ├── Persistent Volume Claim
    │
    ├── Job
    │
    ├── CronJob
    │
    └── DaemonSet
```

---

## 🚀 Deploy Resources

Create Namespace

```bash
kubectl apply -f namespace.yml
```

Deploy NGINX

```bash
kubectl apply -f deployment.yml
```

Create Service

```bash
kubectl apply -f service.yml
```

Deploy Remaining Resources

```bash
kubectl apply -f replicasets.yml
kubectl apply -f ingress.yml
kubectl apply -f daemonsets.yml
kubectl apply -f job.yml
kubectl apply -f cron-job.yml
kubectl apply -f persistentvolume.yml
kubectl apply -f persistentVolumeClaim.yml
```

---

## ✅ Verify

Check Pods

```bash
kubectl get pods
```

Check Deployments

```bash
kubectl get deployments
```

Check ReplicaSets

```bash
kubectl get rs
```

Check Services

```bash
kubectl get svc
```

Check Ingress

```bash
kubectl get ingress
```

Check Jobs

```bash
kubectl get jobs
```

Check CronJobs

```bash
kubectl get cronjobs
```

Check DaemonSets

```bash
kubectl get daemonsets
```

Check Persistent Volumes

```bash
kubectl get pv
```

Check Persistent Volume Claims

```bash
kubectl get pvc
```

---

## 📸 Screenshots

### NGINX Deployment

![NGINX Deployment](screenshots/Screenshot%202026-05-27%20142130.png)

---

### Kubernetes Resources

![Resources](screenshots/Screenshot%202026-05-27%20142143.png)

---

### Persistent Storage

![Storage](screenshots/Screenshot%202026-05-27%20203513.png)

---

### Ingress

![Ingress](screenshots/Screenshot%202026-05-27%20203834.png)

---

## 🎯 Learning Outcomes

After completing this module, you will understand:

- Kubernetes Workloads
- Deployments & ReplicaSets
- Services
- Ingress
- Persistent Storage
- Jobs & CronJobs
- DaemonSets
- Resource Verification using kubectl