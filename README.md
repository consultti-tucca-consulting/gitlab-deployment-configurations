# gitlab-deployment-configurations


## Introduction  (5 points)
__Consider this to be an elevator pitch for your work, and try to summarize your work in this section.__
 - __What is the problem area you are working in, and why is it important?__
 - __What are the key insights and takeaways from your work?__

Introducing our solution for teams working on highly secret intellectual property software: a secure source code management system with high availability.

Conventional and popular git based source code management systems like GitHub and GitLab are not an option for our clients, but we have the solution. We create a deployment configuration for deploying a git version control system on AWS cloud solution services.

Our deployment can be easily moved to [AWS GovCloud](https://aws.amazon.com/govcloud-us/?whats-new-ess.sort-by=item.additionalFields.postDateTime&whats-new-ess.sort-order=desc) or other secure cloud solution services, ensuring the highest level of security for your intellectual property. Join us and rest easy knowing your code is safe with our secure source code management system.

## Motivation  (3 points)
 - __What motivated you to work on this problem?__
 - __What insights you expected to gain by working on this problem?__

We were interested in how would a source code management system be deployed to a cloud environment in practice and what kind of tools can we use to automate this process as much as possible. We wanted to make this project as replicatable as possible by following best practices of [IaC](https://en.wikipedia.org/wiki/Infrastructure_as_code).

We expected to learn much about cloud providers([AWS](https://aws.amazon.com/)) and IaC tooling([Terraform](https://www.terraform.io/),  [Ansible](https://docs.ansible.com/)).


## Background (2 points)
 - __Enumerate the related works or projects that addressed this problem__

From our team members' personal experience, some companies deploy version control systems in their own private network without using third party version control or cloud services. This approach however requires a lot of work with infrastructure resources like network routers and servers.


## System Architecture (Total 5 points)

 - __What are the key components of your system, and why are these part of your system?__
 - __How are these components related to each other, why are they connected in this way?__
 - __What are the various hardware and software resources you used for your system?__
 - __What were the various alternatives and tradeoffs that were behind the selection of these resources?__

Our system relies on several components that are critical for its smooth operation and efficiency. One of the key components is Terraform, an infrastructure as code platform that enables us to easily deploy our system. With Terraform, we can deploy our system in a more efficient and streamlined manner, saving time and resources in the process.

To store our deployment configurations and deployment state, we use [Terraform Cloud](https://cloud.hashicorp.com/products/terraform). This ensures that all team members are aware of the current deployment status, helping us to stay on track and minimize the risk of errors or conflicts.

For deploying the GitLab platform application into the cloud instance, we utilize Ansible.

To ensure high availability and reliability of our system, we rely on Amazon Web Services (AWS) Cloud Services. Specifically, we utilize the EC2 instance, which enables us to easily replicate our service once it has been set up. This ensures that we can quickly and easily scale up our operations as needed without worrying about system downtime or disruptions.

Our system uses [GitLab Community Edition](https://gitlab.com/rluna-gitlab/gitlab-ce), an open-source software development platform that offers built-in version control, issue tracking, code review, and continuous integration/continuous deployment (CI/CD) tools. This provided us with everything we needed.

For hosting our GitLab CE application, we chose the [t3.medium](https://aws.amazon.com/ec2/instance-types/t3/) EC2 instance from AWS. This virtual machine has 4GB of memory, 2 vCPUs, and network burst bandwidth of 5 Gbps. We selected this instance type because it was the cheapest EC2 instance with sufficient resources to host GitLab CE.

We chose AWS as our cloud provider because of our familiarity with their platform and it being the most widespread cloud provider. Other notable alternatives include Microsoft Azure and Google Cloud Platform.

## Performance Evaluation (5 points)

 - __What was the methodology used for the performance evaluation evaluation?__
 - __What are the results?__
 - __Why are these results relevant, and to whom?__

We were able to push commit to our GitLab source control system running in virtual private network.

## Discussion (5 points)
 - __What are the key strengths of your work?__
 - __What are the key weaknesses?__
 - __If you had to do this work again, how would your approach be different?__

Our solution is designed to be fully redeployable in any AWS-based cloud environment. This is made possible through the use of Ansible and Terraform.

As the solution relies on Amazon Web Services, it benefits from its high availability. According to the [Amazon Compute Service Level Agreement](https://aws.amazon.com/compute/sla/), AWS will make commercially reasonable efforts to ensure that Amazon EC2 is available for each AWS region with a Monthly Uptime Percentage of at least 99.99%.

However, it is important to note that Terraform deployment configurations are not cloud service provider agnostic, and are thus vendor-locked to Amazon's cloud services.

While it is possible to rent bigger EC2 instances to increase resources, scaling the application for multiple independent instances is not yet feasible. To enable this functionality, we would need to configure and deploy a load balancer to our VPC, which can be achieved using the load balancer types that AWS has to offer. More information on this can be found in the [AWS documentation](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/load-balancer-types.html).

## Availability (5 points)
 - __Pointer to the source code and datasets__
 - __Pointer to a video summarizing and demonstrating your solution__
   - Try to target the video duration to be less than 10 minutes. There is no lower limit for the duration of the video. You can go over 10 minutes by a few seconds (up to 2 minutes) but try to keep it under 10 minutes.
 - __Also mention the distribution of the work:__
   - Examples -- i) all participants contributed equally, ii) if a group consisted of A,B,C,D, where contributions are not equal you can say something like: 50% done by A, 25% done by B, and 20% done by C, and 5 % done by D.
