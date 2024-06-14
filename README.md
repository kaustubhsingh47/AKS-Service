# AKS-Service

## Background and Strategic fit

Azure Logic Apps are established to provide the essential infrastructure services required to run their workloads. They are structured to facilitate the application onboarding process by setting up the necessary infrastructure at different levels. Logic Apps are critical in each level of the landing zones due to their role in automating and orchestrating the setup and management of these services. 

Enabling Logic Apps at each level of the landing zones is crucial to automate workflows and processes, reducing the need for manual intervention and ensuring consistent and efficient operations across all levels. They facilitate the integration of various services, enabling seamless communication and operation within the infrastructure.

Azure Logic Apps provide a scalable and flexible framework that can adapt to the evolving needs of applications and workloads. They improve monitoring, alerting, and maintenance of the infrastructure services, making the management of resources more effective.

### Role of Logic Apps in Landing Zones:

Logic App Landing Zone Level 0 establishes resource groups and role assignments for subscriptions, hubs, and resource groups. This level provides the initial setup needed for organizing and securing resources.

Logic App Landing Zone Level 1 includes networking, KeyVault, and storage accounts for storing artifacts. This level ensures that the essential infrastructure is in place for secure and efficient data storage and network communication.

Logic App Landing Zone Level 2 involves setting up application storage accounts, disk encryption, storage containers, KeyVault keys, network watchers, and app service environments. This level builds on the foundational services to provide the core infrastructure required by applications.

Logic App Landing Zone Level 3 includes configuring OS images, load balancers, VM scale sets, virtual machines, additional storage accounts, app service plans, Logic Apps, and storage shares. This level focuses on the specific infrastructure needed for running and scaling applications.


## Prerequisite 

To execute the Application Landing Zone Templates below are the steps required 

1. Add Private Hosted Zone Entry in Connectivity Landing Zone for Logic App Domains for setting up DNS resolution for the Logic Apps within the private network. By Adding private hosted zone entries ensures that the Logic Apps can resolve domain names within the private network securely, preventing exposure to the public internet and enhancing security and performance.

2. Create Resource Groups to organize resources such as Logic Apps, storage accounts, and networking components helps manage and organize them efficiently and User Assigned Managed Identities, Map Relevant Roles (e.g., Storage Contributor, Blob Contributor, etc) to enable secure access to Azure resources without storing credentials in the code.

3. Create VNet and Two Subnets, and Network Security Groups (NSG) and Subnet Security Groups (SG) to establish a secure network infrastructure for Logic Apps. It provides isolated and secure network connectivity for resources and separates different parts of the application to improve security and management.

4. Create Storage Account for logic Apps to store states, configuration, logs and the storage account is used to store connector definitions and other related metadata, Role Assignments Required for Logic App  have the required permissions to read, write, and manage data in the storage account.

5. Create Logic App Standard Environment provides a dedicated, scalable environment for running Logic Apps, ensuring better performance, reliability, and management capabilities. Environment Standardization Ensures that all Logic Apps operate in a consistent environment, simplifying management and troubleshooting.
