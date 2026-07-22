# Advanced Pod Patterns

This module demonstrates advanced Kubernetes Pod patterns using **Init Containers** and **Sidecar Containers**. These patterns are commonly used in production environments to prepare application environments and extend application functionality.

---

## 📚 Concepts Covered

- Init Containers
- Sidecar Containers
- Multi-Container Pods
- Pod Lifecycle

---

## 📂 Files

| File | Description |
|------|-------------|
| init-container.yaml | Demonstrates the use of an Init Container before the main application starts |
| sidecar-container.yaml | Demonstrates a Sidecar Container running alongside the main application |

---

## 🏗 Architecture

### Init Container

```text
Init Container
       │
       ▼
Completes Initialization
       │
       ▼
Main Application Container Starts
```

---

### Sidecar Container

```text
+------------------------------------+
|               Pod                  |
|                                    |
|  Main Container    Sidecar         |
|       │               │            |
|       └──── Shared Volume ────┘    |
+------------------------------------+
```

---

## 🚀 Deploy

Deploy Init Container Example

```bash
kubectl apply -f init-container.yaml
```

Deploy Sidecar Example

```bash
kubectl apply -f sidecar-container.yaml
```

---

## ✅ Verify

Check Pods

```bash
kubectl get pods
```

Describe Pod

```bash
kubectl describe pod <pod-name>
```

View Logs

Init Container Logs

```bash
kubectl logs <pod-name> -c init-container
```

Sidecar Container Logs

```bash
kubectl logs <pod-name> -c sidecar-container
```

---

## 🎯 Learning Outcomes

After completing this module, you will understand:

- How Init Containers work
- How Sidecar Containers extend application functionality
- The lifecycle of multi-container Pods
- Common production use cases for Init and Sidecar Containers