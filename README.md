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

We were interested in how would a source code management system be deployed to a cloud environment in practice and what kind of tools can we use to automate this process as much as possible. We wanted to make this project as replicatable as possible by following best practices of IaC.

We expected to learn much about cloud providers(AWS) and IaC tooling(Terraform, Ansible).


## Background (2 points)
 - __Enumerate the related works or projects that addressed this problem__

From our team members' personal experience, some companies deploy version control systems in their own private network without using third party version control or cloud services. This approach however requires a lot of work with infrastructure resources like network routers and servers.


## System Architecture (Total 5 points)

 - __What are the key components of your system, and why are these part of your system?__
 - __How are these components related to each other, why are they connected in this way?__
 - __What are the various hardware and software resources you used for your system?__
 - __What were the various alternatives and tradeoffs that were behind the selection of these resources?__


The components that make up our system are critical for ensuring its smooth operation and efficiency. One of the key components is Terraform, which serves as the infrastructure as a code platform that enables us to easily deploy our system. With Terraform, we can deploy our system in a more efficient and streamlined manner, allowing us to save time and resources in the process.

In addition, we also use Terraform Cloud, which helps us to store our deployment configurations and deployment state. This ensures that everyone in the team is aware of what is currently deployed, making it easier for us to stay on track and minimize the risk of errors or conflicts.

Ansible is used for deploying the GitLab platform application into the cloud instance.

Furthermore, we rely on AWS Cloud Services, which offer high availability and reliability, ensuring that our system remains up and running at all times. To achieve this, we utilize the EC2 instance, which enables us to easily replicate our service once it has been set up. This ensures that we can quickly and easily scale up our operations as needed, without having to worry about system downtime or disruptions.

Overall, these components form the backbone of our system, providing us with the necessary tools and capabilities to deploy and maintain a robust, reliable, and efficient system.

We picked GitLab Community Edition, an open source software development platform, that offers built-in version control, issue tracking, code review and CI/CD tools, which was everything that we needed.

From Amazon Web Services we used [t3.medium](https://aws.amazon.com/ec2/instance-types/t3/) EC2 instance - a virtual machine for running our GitLab platform application.

t3.medium instance has 4GB of memory, 2 vCPUs and network burst bandwidth of 5 Gbps. We decided to use this version because it was cheapest EC2 instance that had enough resources to host GitLab CE application.

Amazon was chosen as a cloud provider since we were more familiar with their platform. Other most known alternatives would have been Microsoft Azure, Google Cloud Platform.



## Performance Evaluation (5 points)

 - __What was the methodology used for the performance evaluation evaluation?__
 - __What are the results?__
 - __Why are these results relevant, and to whom?__

We were able to push commit to our GitLab source control system running in virtual private network.

## Discussion (5 points)
 - __What are the key strengths of your work?__
 - __What are the key weaknesses?__
 - __If you had to do this work again, how would your approach be different?__

Thanks to Ansible and Terraform, our solution is fully redeployable in any AWS based cloud enviroment.

Since it relies on Amazon Web services it has really high availability.
```
"AWS will use commercially reasonable efforts to make Amazon EC2 available for each AWS region with a Monthly Uptime Percentage of at least 99.99%".
```
[Amazon Compute Service Level Agreement](https://aws.amazon.com/compute/sla/)

Terraform deployment are not cloud service provider agnostic, meaning written configurations are vendor locked to Amazon's cloud services.

Even though we could rent bigger EC2 instance to easily add more resources, we cannot yet scale the application for multiple independent instances. To enable this we would need to configure and deploy load balancer to our VPC that [AWS has to offer](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/load-balancer-types.html).

## Availability (5 points)
 - __Pointer to the source code and datasets__
 - __Pointer to a video summarizing and demonstrating your solution__
   - Try to target the video duration to be less than 10 minutes. There is no lower limit for the duration of the video. You can go over 10 minutes by a few seconds (up to 2 minutes) but try to keep it under 10 minutes.
 - __Also mention the distribution of the work:__
   - Examples -- i) all participants contributed equally, ii) if a group consisted of A,B,C,D, where contributions are not equal you can say something like: 50% done by A, 25% done by B, and 20% done by C, and 5 % done by D.
