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

