# Theory

## Day 1. Introduction to Kubernetes and its Architecture

### 1. Introduction to Kubernetes

- What is Kubernetes?:
  - Understanding Kubernetes as an open-source container orchestration platform.
  - Why Kubernetes is the de facto standard for container orchestration.
- Core Concepts:

  - Pods, Nodes, Clusters: basic Kubernetes building blocks.
  - Containers in Kubernetes and the purpose of orchestration.

### 2. Kubernetes Architecture Overview

- Master Node Components:
  - Control Plane and its components: API Server, Controller Manager, Scheduler, etcd.
  - API Server: Serves as the frontend to the Kubernetes Control Plane, handling API requests.
  - etcd: Distributed key-value store that holds the cluster configuration data.
  - Scheduler: Assigns Pods to Nodes based on resource availability.
  - Controller Manager: Manages controllers like Replication, Endpoint, Namespace, and more.
- Worker Node Components:

  - Kubelet: Agent running on each worker node responsible for ensuring that containers are running.
  - Kube-proxy: Manages networking for Pods, responsible for routing traffic.
  - Container runtime: Docker or containerd to run containers.

### 3. Kubernetes Objects and Configuration

- Understanding Kubernetes objects:
  - Pods, Services, ConfigMaps, Secrets, Volumes, Namespaces, and their use cases.
- YAML Configuration Files:

  - How Kubernetes objects are defined and managed using YAML files.
  - Basic structure and components of a Kubernetes YAML file.
  - Hands-on: Write a basic YAML file for a Pod and deploy it.

### 4. Basic Kubernetes Operations

- kubectl basics:
  - Overview of the `kubectl` command-line tool for interacting with Kubernetes clusters.
  - Common commands: creating resources (`apply`), deleting resources (`delete`), viewing logs (`logs`), and accessing clusters (`get`, `describe`).
  - Practice: Use `kubectl` to deploy and manage simple resources.

---

## Day 2. Deployments, Scaling, and Updates in Kubernetes

### 1. Deployments and ReplicaSets

- Deployments:
  - How Kubernetes Deployments manage updates and scaling.
  - Key attributes: Replicas, Selectors, Strategy (Recreate vs RollingUpdate).
  - ReplicaSets: Ensuring a defined number of Pod replicas are running at all times.
- YAML Configuration for Deployments:

  - Hands-on: Write a Deployment YAML file for a stateless application.
  - Managing replicas and scaling manually using `kubectl scale`.

### 2. Scaling in Kubernetes

- Horizontal Pod Autoscaler (HPA):
  - Automatic scaling of Pods based on CPU utilization and custom metrics.
  - Hands-on: Configure HPA to scale a Deployment.
- Vertical Pod Autoscaling (VPA):
  - Scaling resources (CPU, memory) for individual Pods.
- Cluster Autoscaler:

  - Automatically adding or removing nodes based on the overall resource demand of the cluster.

### 3. Deployment strategies

---

## Day 3. Networking and Services in Kubernetes

### 1. Networking Model in Kubernetes

- Kubernetes Network Basics:
  - Flat network model where every Pod can communicate with every other Pod without NAT.
- Service Discovery:
  - Kubernetes DNS for automatic service discovery inside the cluster.
- Networking Plugins:
  - Overview of CNI (Container Network Interface) plugins like Flannel, Calico, Weave.
- Pod Networking:

  - How IP addresses are assigned to Pods and how they communicate.

### 2. Services in Kubernetes

- Service Types:

  - ClusterIP: Internal-only service for communication within the cluster.
  - NodePort: Exposes the service on each Node's IP at a static port.
  - LoadBalancer: Provisioning external IPs for services using a cloud provider’s load balancer.
  - Hands-on: Create a Service to expose a Pod internally and externally.

- Ingress Controllers:
  - How Ingress manages external access to services, allowing for path-based and hostname-based routing.
  - Configure an Ingress resource to route HTTP requests.

### 3. Network Policies

- Network Security with Policies:
  - Using network policies to control the traffic flow between Pods.
  - Securing communication between services and restricting unnecessary traffic.
  - Hands-on: Write a NetworkPolicy to allow or deny traffic between different Pods.

---

## Day 4. Persistent Storage, ConfigMaps, and Secrets in Kubernetes

### 1. Kubernetes Storage

- Persistent Volumes (PV) and Persistent Volume Claims (PVC):

  - Understanding how Kubernetes abstracts storage through PV and PVC.
  - Different types of storage classes (block storage, file system).
  - Hands-on: Write YAML files for PV and PVC and mount them into a Pod.

- Dynamic Provisioning:

  - Automatically provisioning storage for workloads based on PVC requests.

### 2. ConfigMaps and Secrets

- ConfigMaps:
  - Externalizing configuration files into Kubernetes objects using ConfigMaps.
  - Hands-on: Store configuration data and inject it into a Pod using ConfigMaps.
- Secrets:

  - Securely storing sensitive information such as API keys, passwords using Secrets.
  - Base64 encoding and mounting secrets as environment variables or volumes.
  - Hands-on: Create and use a Kubernetes Secret.

### 3. StatefulSets for Stateful Applications

- StatefulSets Overview:
  - Managing stateful applications that require persistent identity and storage (e.g., databases).
  - Differences between Deployments and StatefulSets.
  - Hands-on: Deploy a stateful application using StatefulSets.

---

## Day 5. Security, Monitoring, and Logging in Kubernetes

### 1. Security in Kubernetes

- Role-Based Access Control (RBAC):
  - Controlling access to the Kubernetes API and resources based on user roles.
  - Create Roles and RoleBindings to define who can access what resources.
  - Hands-on: Implement RBAC to limit access to a namespace.
- Pod Security Contexts:

  - Defining security contexts at the Pod level for privilege management (e.g., running as non-root).
  - Hands-on: Apply a security context to a Pod.

- Network Policies for Security:

  - Revisiting Network Policies: Using them to enforce network segmentation for security.

### 2. Monitoring Kubernetes Clusters

- Metrics Server:
  - Setting up the Kubernetes metrics server to gather resource usage data (CPU, memory).
- Prometheus and Grafana:

  - Introduction to Prometheus for monitoring Kubernetes and Grafana for visualization.
  - Hands-on: Set up Prometheus and Grafana to monitor cluster performance.

### 3. Logging in Kubernetes

- Logging Architecture:
  - How Kubernetes logs from containers are managed.
- Centralized Logging Solutions:
  - ELK stack (Elasticsearch, Logstash, Kibana) or EFK (Fluentd instead of Logstash) for log aggregation.
  - Hands-on: Set up basic logging with Fluentd and Elasticsearch.
