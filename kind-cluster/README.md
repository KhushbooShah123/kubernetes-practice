# 🚀 Kind Kubernetes Cluster Setup

This folder contains the configuration required to create a local Kubernetes cluster using **Kind (Kubernetes IN Docker)**.

Kind allows developers to run Kubernetes clusters locally using Docker containers, making it useful for learning, testing Kubernetes manifests, and experimenting with cluster configurations.

---

## 📌 Overview

In this section, we create a custom Kubernetes cluster using a Kind configuration file.

The cluster configuration defines:

- Kubernetes node setup
- Control plane configuration
- Worker nodes
- Cluster networking
- Local Kubernetes environment

---

## 🛠️ Prerequisites

Before creating the cluster, make sure the following tools are installed:

- Docker
- kubectl
- Kind

Verify installations:

```bash
docker --version

kubectl version --client

kind version
```

---

# 📂 Files

```
kind-cluster/

│
├── config.yml
│
└── screenshots/
    └── cluster-created.png
```

---

# ⚙️ Create Kind Cluster

Create a Kubernetes cluster using the configuration file:

```bash
kind create cluster --name dev-cluster --config config.yml
```

---

# 🔍 Verify Cluster

Check available clusters:

```bash
kind get clusters
```

Check Kubernetes nodes:

```bash
kubectl get nodes
```

Expected output:

```
NAME                         STATUS   ROLES           AGE
dev-cluster-control-plane    Ready    control-plane   ...
dev-cluster-worker          Ready    <none>          ...
```

---

# 📄 Configuration File

The `config.yml` file defines the Kind cluster architecture.

Example:

```yaml
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4

nodes:
- role: control-plane

- role: worker

- role: worker
```

This creates:

- 1 Control Plane Node
- 2 Worker Nodes

---

# 🧹 Delete Cluster

To remove the Kind cluster:

```bash
kind delete cluster --name dev-cluster
```

---

# 📸 Screenshots

## Kind Cluster Created Successfully

![Kind Cluster](screenshots/Screenshot%202026-05-27%20112606.png)

---

# 🎯 Learning Outcomes

By completing this section, you learn:

- Creating local Kubernetes clusters
- Understanding Kubernetes node architecture
- Working with Kind configuration files
- Managing Kubernetes development environments
- Testing Kubernetes resources locally

---
