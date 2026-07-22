# MySQL on Kubernetes

This module demonstrates how to deploy a stateful MySQL database on Kubernetes using StatefulSets, ConfigMaps, Secrets, and Services.

---

## 📚 Concepts Covered

- Namespace
- StatefulSet
- Service
- ConfigMap
- Secret

---

## 📂 Files

| File | Description |
|------|-------------|
| namespace.yml | Creates a dedicated namespace |
| configMap.yml | Stores MySQL configuration |
| secret.yml | Stores sensitive credentials |
| service.yml | Exposes the MySQL database |
| statefulsets.yml | Deploys MySQL using a StatefulSet |

---

## 🏗 Architecture

```text
Namespace
    │
    ├── ConfigMap
    │
    ├── Secret
    │
    ├── StatefulSet
    │       │
    │       └── MySQL Pod
    │
    └── Service
```

---

## 🚀 Deploy Resources

Create Namespace

```bash
kubectl apply -f namespace.yml
```

Create ConfigMap

```bash
kubectl apply -f configMap.yml
```

Create Secret

```bash
kubectl apply -f secret.yml
```

Deploy StatefulSet

```bash
kubectl apply -f statefulsets.yml
```

Create Service

```bash
kubectl apply -f service.yml
```

---

## ✅ Verify

Check Pods

```bash
kubectl get pods
```

Check StatefulSets

```bash
kubectl get statefulsets
```

Check Services

```bash
kubectl get svc
```

Check ConfigMaps

```bash
kubectl get configmaps
```

Check Secrets

```bash
kubectl get secrets
```

---

## 📸 Screenshots

### MySQL Deployment

![MySQL Deployment](screenshots/Screenshot%202026-05-27%20120617.png)

---

### StatefulSet Resources

![StatefulSet](screenshots/Screenshot%202026-05-27%20130752.png)

---

## 🎯 Learning Outcomes

After completing this module, you will understand:

- Deploying stateful applications on Kubernetes
- Managing application configuration with ConfigMaps
- Securing sensitive information using Secrets
- Working with StatefulSets
- Exposing database services
- Verifying Kubernetes resources using kubectl