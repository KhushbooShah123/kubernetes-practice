# Kubernetes Dashboard

This module demonstrates how to deploy and access the Kubernetes Dashboard, a web-based user interface for managing and monitoring Kubernetes clusters.

---

## 📚 Concepts Covered

- Kubernetes Dashboard
- Dashboard Access
- Service Account
- Cluster Administration
- Token-Based Authentication

---

## 📂 Files

| File | Description |
|------|-------------|
| dashboard-admin-user.yaml | Creates an administrative Service Account for accessing the Kubernetes Dashboard |

---

## 🏗 Architecture

```text
Kubernetes Cluster
        │
        ▼
Kubernetes Dashboard
        │
        ▼
Dashboard Admin User
        │
        ▼
Authentication Token
        │
        ▼
Web Browser
```

---

## 🚀 Deploy

Create the Dashboard Admin User

```bash
kubectl apply -f dashboard-admin-user.yaml
```

Generate Login Token

```bash
kubectl -n kubernetes-dashboard create token admin-user
```

Start Proxy

```bash
kubectl proxy
```

Access Dashboard

```
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/
```

---

## ✅ Verify

Check Dashboard Pods

```bash
kubectl get pods -n kubernetes-dashboard
```

Check Service Account

```bash
kubectl get serviceaccounts -n kubernetes-dashboard
```

Check Services

```bash
kubectl get svc -n kubernetes-dashboard
```

---

## 📸 Screenshots

### Kubernetes Dashboard

![Dashboard](screenshots/Screenshot%202026-05-29%20225044.png)

---

### Dashboard Overview

![Dashboard Overview](screenshots/Screenshot%202026-05-30%20032425.png)

---

## 🎯 Learning Outcomes

After completing this module, you will understand:

- Installing and accessing the Kubernetes Dashboard
- Creating administrative users
- Token-based authentication
- Managing Kubernetes resources through a graphical interface