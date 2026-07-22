# 🚀 Kubernetes Learning Kit

> A comprehensive hands-on Kubernetes learning repository covering core concepts, workloads, networking, storage, security, autoscaling, Helm, monitoring, and more.

![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?logo=kubernetes&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white)
![Helm](https://img.shields.io/badge/Helm-0F1689?logo=helm&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 📖 About

This repository documents my hands-on Kubernetes learning journey.

It contains practical examples of Kubernetes workloads, networking, storage, RBAC, autoscaling, Helm charts, monitoring, and other production-oriented concepts. Every module is organized into its own folder with Kubernetes manifests and supporting resources.

---

# 📚 Topics Covered

| Category | Status |
|-----------|:------:|
| Pods | ✅ |
| Deployments | ✅ |
| ReplicaSets | ✅ |
| Services | ✅ |
| Namespaces | ✅ |
| ConfigMaps | ✅ |
| Secrets | ✅ |
| StatefulSets | ✅ |
| Persistent Volumes | ✅ |
| Persistent Volume Claims | ✅ |
| Jobs | ✅ |
| CronJobs | ✅ |
| DaemonSets | ✅ |
| Ingress | ✅ |
| RBAC | ✅ |
| Service Accounts | ✅ |
| Horizontal Pod Autoscaler (HPA) | ✅ |
| Vertical Pod Autoscaler (VPA) | ✅ |
| Helm Charts | ✅ |
| Custom Resource Definitions (CRDs) | ✅ |
| Kubernetes Dashboard | ✅ |
| Init Containers | ✅ |
| Sidecar Containers | ✅ |
| Kind Cluster | ✅ |
| Monitoring | ✅ |

---

# 📂 Repository Structure

```text
.
├── apache/
├── crd/
├── dashboard/
├── helm/
├── kind-cluster/
├── monitoring/
├── mysql/
├── nginx/
└── pods/
```

---

# 📁 Modules

| Folder | Description |
|----------|-------------|
| apache | Apache deployment with RBAC and autoscaling |
| nginx | Core Kubernetes workload examples |
| mysql | Stateful MySQL deployment |
| helm | Custom Helm charts |
| crd | Custom Resource Definitions |
| dashboard | Kubernetes Dashboard setup |
| monitoring | Monitoring setup |
| kind-cluster | Local Kubernetes cluster |
| pods | Init and Sidecar containers |

---

# 🛠 Prerequisites

- Kubernetes
- kubectl
- Kind or Minikube
- Helm
- Docker

---

# 🚀 Getting Started

Clone the repository

```bash
git clone https://github.com/KhushbooShah123/k8s-learning-kit.git
```

Move into the project

```bash
cd k8s-learning-kit
```

Deploy resources

```bash
kubectl apply -f <manifest-file>.yml
```

---

# 📸 Screenshots

Screenshots for each module are available inside their respective `screenshots/` directory.

---

# 🎯 Learning Outcomes

By completing this repository, you will gain practical experience with:

- Kubernetes Architecture
- Workloads
- Networking
- Storage
- Security (RBAC)
- Autoscaling
- Helm Charts
- Monitoring
- Local Kubernetes using Kind
- Production-ready Kubernetes concepts

---

# 🤝 Contributions

Suggestions and improvements are welcome.

If you find this repository helpful, consider giving it a ⭐.