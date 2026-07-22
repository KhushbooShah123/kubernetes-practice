# Helm Charts

This module demonstrates how to package, configure, and deploy Kubernetes applications using Helm, the package manager for Kubernetes.

The repository includes custom Helm charts for deploying Apache HTTP Server and a Node.js application.

---

## 📚 Concepts Covered

- Helm Charts
- Chart Structure
- Templates
- Values Files
- Helm Packaging
- Helm Installation
- Application Deployment

---

## 📂 Repository Structure

```text
helm/
├── apache-helm/
│   ├── Chart.yaml
│   ├── values.yaml
│   ├── templates/
│   └── screenshots/
│
├── node-js-app/
│   ├── Chart.yaml
│   ├── values.yaml
│   ├── templates/
│   └── screenshots/
│
├── apache-helm-0.1.0.tgz
├── node-js-app-0.1.0.tgz
└── get_helm.sh
```

---

## 📦 Apache Helm Chart

Contains a reusable Helm chart for deploying an Apache web server.

### Resources

- Deployment
- Service
- ServiceAccount
- HPA
- Ingress
- HTTPRoute

---

## 📦 Node.js Helm Chart

Contains a reusable Helm chart for deploying a Node.js application.

### Resources

- Deployment
- Service
- ServiceAccount
- HPA
- Ingress
- HTTPRoute

---

## 🚀 Install Helm

Linux

```bash
chmod +x get_helm.sh
./get_helm.sh
```

---

## 🚀 Install Chart

Apache

```bash
helm install apache ./apache-helm
```

Node.js

```bash
helm install node-app ./node-js-app
```

---

## 📋 Verify

```bash
helm list

kubectl get all

helm status apache

helm status node-app
```

---

## 📸 Screenshots

### Apache Helm Chart

![Apache Helm](apache-helm/screenshots/Screenshot%202026-05-30%20140231.png)

---

### Apache Deployment

![Apache Deployment](apache-helm/screenshots/Screenshot%202026-05-30%20140411.png)

---

### Node.js Helm Chart

![Node Helm](node-js-app/screenshots/Screenshot%202026-05-31%20002102.png)

---

## 🎯 Learning Outcomes

After completing this module you will understand:

- Helm Chart structure
- Template rendering
- Values customization
- Helm package creation
- Helm installation and upgrades
- Managing Kubernetes applications with Helm