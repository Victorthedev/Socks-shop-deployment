# **README for Deploying Socks Shop Microservices on Kubernetes**

---

## **Overview**

This guide provides a streamlined process for deploying the Socks Shop microservices application on a Kubernetes cluster using Infrastructure as Code (IaaC). The deployment leverages Terraform for provisioning, Helm for Kubernetes resource management, and monitoring tools like Prometheus and Grafana. HTTPS is enabled using Let’s Encrypt, with security enhancements through network policies and Ansible Vault for sensitive data encryption.

---

## **Dependencies**

Ensure the following tools are installed on your Mac:

- [Homebrew](https://brew.sh/)
- [Terraform](https://www.terraform.io/downloads)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Helm](https://helm.sh/docs/intro/install/)
- [Docker Desktop](https://docs.docker.com/desktop/install/mac-install/)

---

## **Steps to Deploy**

### **1. Clone the Repository**

```bash
git clone https://github.com/microservices-demo/microservices-demo.git
cd microservices-demo/deploy/kubernetes

### **2. Provision Kubernetes Cluster Using Terraform**

```bash
terraform init
terraform apply

### **3. Deploy the Socks Shop Application Using Helm**

```bash
helm install socks-shop .

### **4. Set Up Monitoring and Logging**

```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/prometheus
helm install grafana prometheus-community/grafana

### **5. Enable HTTPS with Let’s Encrypt**

```bash
helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.5.3 --set installCRDs=true

### **6. Implement Network Policies**

```bash
kubectl apply -f network-policy.yaml
