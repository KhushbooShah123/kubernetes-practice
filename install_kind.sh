#!/bin/bash

set -e
set -o pipefail

echo "🚀 Starting installation of Docker, KIND, and kubectl..."

# ----------------------------
# Update packages
# ----------------------------
echo "📦 Updating package list..."
sudo apt-get update -y

# ----------------------------
# Install required packages
# ----------------------------
echo "📦 Installing dependencies..."
sudo apt-get install -y curl apt-transport-https ca-certificates

# ----------------------------
# 1. Install Docker
# ----------------------------
if ! command -v docker &>/dev/null; then
    echo "🐳 Installing Docker..."

    sudo apt-get install -y docker.io

    echo "🔄 Starting Docker service..."
    sudo systemctl enable docker
    sudo systemctl start docker

    echo "👤 Adding user to docker group..."
    sudo usermod -aG docker $USER

    echo "✅ Docker installed successfully."
else
    echo "✅ Docker already installed."
fi

# ----------------------------
# 2. Install KIND
# ----------------------------
if ! command -v kind &>/dev/null; then
    echo "☸️ Installing KIND..."

    ARCH=$(uname -m)

    if [ "$ARCH" = "x86_64" ]; then
        curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.31.0/kind-linux-amd64
    elif [ "$ARCH" = "aarch64" ] || [ "$ARCH" = "arm64" ]; then
        curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.31.0/kind-linux-arm64
    else
        echo "❌ Unsupported architecture: $ARCH"
        exit 1
    fi

    chmod +x ./kind
    sudo mv ./kind /usr/local/bin/kind

    echo "✅ KIND installed successfully."
else
    echo "✅ KIND already installed."
fi

# ----------------------------
# 3. Install kubectl
# ----------------------------
if ! command -v kubectl &>/dev/null; then
    echo "📦 Installing kubectl..."

    VERSION=$(curl -L -s https://dl.k8s.io/release/stable.txt)
    ARCH=$(uname -m)

    if [ "$ARCH" = "x86_64" ]; then
        curl -LO "https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl"
    elif [ "$ARCH" = "aarch64" ] || [ "$ARCH" = "arm64" ]; then
        curl -LO "https://dl.k8s.io/release/${VERSION}/bin/linux/arm64/kubectl"
    else
        echo "❌ Unsupported architecture: $ARCH"
        exit 1
    fi

    chmod +x kubectl
    sudo mv kubectl /usr/local/bin/

    echo "✅ kubectl installed successfully."
else
    echo "✅ kubectl already installed."
fi

# ----------------------------
# 4. Verify installations
# ----------------------------
echo
echo "🔍 Installed Versions:"
docker --version
kind --version
kubectl version --client

echo
echo "⚠️ IMPORTANT:"
echo "Please logout/login OR run:"
echo "newgrp docker"

echo
echo "🎉 Installation completed successfully!"
