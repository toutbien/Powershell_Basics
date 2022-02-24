#AZ900 Study Helper for Powershell
#Created in February 2022 by toutbien; early release intended for MSSA CSCA5 (Cloud Team 6)
#For the most up-to-date AZ900 information visit https://docs.microsoft.com/en-us/learn/certifications/exams/az-900
#GitHub @toutbien
#You can get 12-18 questions wrong and pass the AZ900, depending on the number of questions on your exam. A passing score is 700.

#-------These are the instructions-------------
Write-Host "Welcome to the mock AZ900 exam for Powershell. "
#There will be 60 questions on this exam and you should give yourself a max of 65 minutes to complete it.`
#After a question is displayed, you'll be prompted for a response. You will see green text for every correct answer and red for each incorrect answer. `
Start-Sleep -Seconds 3
Write-Host "Please confirm you have read the instructions in the pop-up window to begin."
Start-Sleep -Seconds 5

#-----------------Implementing a pop-up and later a timer---------------------
$newobject = new-object -comobject wscript.shell
$Message = $newobject.popup("After a question is displayed, you'll be prompted for a response. You will see green text for every correct answer and red for each incorrect answer. `
You must input the letter cooresponding with an answer, as in multiple choice. Let's begin. ",30,"Instructions",1)

$Content = "There will be 60 questions on this exam and you should give yourself a max of 65 minutes to complete it.
Good luck!."
Write-Host = $Content

#-----------This is the test question-------------
$question0 = Read-Host "Are you ready? This is a test question. `
Please choose 'y' or 'n'"
if ($question0 -eq 'y') {
Write-Host "Great, let's get started!" -ForegroundColor Green
}
else
{
Write-Host "Incorrect. Please reread the instructions." -ForegroundColor Red
}

#-----------------Here is the test-------------------

$question1 = Read-Host "What is the standard lifecycle for Azure services released by Microsoft? `
a. 1) Preview 2) Limited Availability 3) General Availability `
b. 1) Preview 2) General Availability `
c. 1) Limited Availability 2) General Availability `
d. 1) Private Preview 2) Public Preview 3) General Availability"
if ($question1 -eq 'd') {
Write-Host "1) Private Preview 2) Public Preview 3) General Availability" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question2 = Read-Host "Contoso IT has deployed a group of VMs in Azure. They want to identify recommendations `
on how to reduce the cost of running these VMs. Which tool should they use? (choose the best answer) `
a. Azure Advisor `
b. Azure Cost Management `
c. Azure Price Calculator `
d. Azure Security Center"
if ($question2 -eq 'a') {
Write-Host "Azure Advisor" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question3 = Read-Host "You plan to deploy several Azure VMs. The applications running on these VMs should remain `
available if a single Azure datacenter fails. You opt to deploy VMs to multiple availability zones. Does your solution `
meet the solution criteria?
a. True
b. False"
if ($question3 -eq 'a') {
Write-Host "True" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question4 = Read-Host "To transition a large capital expenditure (CapEx) to an operational expenditure (OpEx), `
Contoso's CIO has suggested to the board that the organization move their virtual machine (IaaS) workloads to Azure.`
The CFO argues that this will result in unpredictable OpEx spending. In this case, what pricing option is available to`
reduce costs and making predicting future spending easier? `
a. Azure Reservations `
b. Pay-as-you-go (PAYG) `
c. Azure VM Scale Sets `
d. Azure in CSP"
if ($question4 -eq 'a') {
Write-Host "Azure Reservations" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question5 = Read-Host "Are Azure services in Public Preview available in all Azure regions? `
a. Yes `
b. No"
if ($question5 -eq 'b') {
Write-Host "No" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question6 = Read-Host "To manage service lifecycle with more granularity, Contoso cloud architects`
have designed a model that involves a large number of resource groups. Will Contoso incur additional`
costs for the resources groups? `
a. Yes `
b. No"
if ($question6 -eq 'b') {
Write-Host "No" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question7 = Read-Host "Contoso is planning to move several on-premises services to Azure PaaS and `
IaaS solutions. The CIO has asked for a tool to estimate the cost of hosting these resources in Azure. `
Tom suggests Azure Cost Management to estimate costs prior to migration. Does Tom's solution meet the solution criteria?  `
a. Yes `
b. No"
if ($question7 -eq 'b') {
Write-Host "No" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question8 = Read-Host "Contoso IT Operations has been tasked with providing recommendations on how to reduce the cost `
of running Azure VMs. Which service should they use to gather recommendations? `
a. Azure Security Center `
b. Azure Advisor `
c. Azure Monitor `
d. Azure App Insights"
if ($question8 -eq 'b') {
Write-Host "Azure Advisor" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question9 = Read-Host "Which aspect of an Azure service is guaranteed in an Azure Service Level Agreement (SLA)? (choose the best answer) `
a. Uptime `
b. Performance `
c. Connectivity `
d. Varies by service"
if ($question9 -eq 'd') {
Write-Host "Varies by service" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question10 = Read-Host "As part of a migration of on-premises VM workloads to Azure VMs, Contoso wants to minimize costs. `
Since the VMs will be running in Azure for an extended period of time (years), what option should they consider to reduce hosting costs? `
a. Azure Cost Management `
b. Azure Reservations `
c. Azure Advisor `
d. VM Scale Sets"
if ($question10 -eq 'b') {
Write-Host "Azure Reservations" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question11 = Read-Host "Are Azure services in Public Preview available to all customers?  `
a. Yes `
b. No"
if ($question11 -eq 'a') {
Write-Host "True" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question12 = Read-Host "You are responsible for recommending infrastructure`
architectures for applications at Contoso. Which solution would you recommend for `
load balancing HTTPS traffic to a web farm in a single Azure region? `
a. Azure Load Balancer `
b. Azure Traffic Manager `
c. Azure Front Door `
d. Azure App Gateway"
if ($question12 -eq 'd') {
Write-Host "Azure App Gateway" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question13 = Read-Host "You need to calculate the estimated cost of a set of Azure resources before you deploy them. `
Which service or tool will you use? `
a. Azure Cost Management `
b. Azure Pricing Calculator `
c. Azure Advisor `
d. Azure TCO Calculator"
if ($question13 -eq 'b') {
Write-Host "Azure Pricing Calculator" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question14 = Read-Host "Contoso IT is planning to migrate all on-premises data to Azure. The Legal Department `
has asked for verification that Azure complies with Contoso's regulatory obligations, such as HIPAA and PCI DSS. `
What should you use to answer this request? `
a. The Knowledge Center `
b. The Trust Center `
c. Azure Advisor `
d. Azure Security Center"
if ($question14 -eq 'b') {
Write-Host "The Trust Center" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question15 = Read-Host "You need to identify deviations from Microsoft security best practices in your `
Azure cloud infrastructure. Which service should you use? `
a. Azure Monitor `
b. Azure Key Vault `
c. Azure Advisor `
d. Azure Security Center"
if ($question15 -eq 'd') {
Write-Host "Azure Security Center" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question16 = Read-Host "Contoso IT has deployed an Azure VM scale set for a frontend web application. `
They want guidance on configuring the virtual network for these resources. Will the Azure Advisor tool `
provide recommendations for these existing resources?  `
a. Yes `
b. No"
if ($question16 -eq 'b') {
Write-Host "No" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question17 = Read-Host "Contoso Corp is planning to move their custom web applications to the cloud. `
The cloud provider platform must provide the ability to scale automatically, and meet the availability SLA of 99%. `
Will Azure App Service (PaaS) meet these requirements?   `
a. Yes `
b. No"
if ($question17 -eq 'a') {
Write-Host "Yes" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question18 = Read-Host "All resources deployed to Contoso's Azure subscriptions include a tag assigned to the resource.`
Do resources in a resource group inherit the tag assigned to the resource group?  `
a. Yes `
b. No"
if ($question18 -eq 'b') {
Write-Host "No" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question19 = Read-Host "Which of the following describes authentication?`
a. Establishes your resource access `
b. Determines which resources you can access `
c. Validates that a user is who they claim to be `
d. Defines the services and regions you can access"
if ($question19 -eq 'c') {
Write-Host "Validates that a user is who they claim to be" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question20 = Read-Host "You need to ensure no one (including administrators) can create additional `
resources in a Azure resource group. What will you do to achieve this objective?`
a. Azure Policy `
b. Role based access control (RBAC) `
c. A lock (Read-only) `
d. Azure Security Center"
if ($question20 -eq 'c') {
Write-Host "A read-only lock" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question21 = Read-Host "Using role based access control (RBAC) in Azure, we can determine which resources and `
services a user has access to. What is this an example of?`
a. Authorization `
b. Authentication `
c. Confidentiality `
d. Integrity"
if ($question21 -eq 'a') {
Write-Host "Authorization" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question22 = Read-Host "You need to identify and enforce Contoso's corporate standards across new and existing Azure deployments. `
Which service would you choose to achieve this requirement? (choose the best answer)`
a. Azure Blueprints `
b. Azure Policy `
c. Azure Resource Manager (ARM) templates `
d. Azure Automation"
if ($question22 -eq 'b') {
Write-Host "Azure Policy" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question23 = Read-Host "Contoso has deployed resources across multiple Azure regions for multiple business units. `
They have a requirement to generate cost and chargeback reporting to track the Azure costs to be charged back to each business unit. `
Which Azure feature should they use to simplify this task?`
a. Azure Tags `
b. Azure Locks `
c. Resource Groups `
d. Management Groups"
if ($question23 -eq 'a') {
Write-Host "Azure Tags" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question24 = Read-Host "Contoso's Security team wants to implement selective use of multi-factor authentication (MFA) `
based on risk associated with the authentication request. Which service should they implement?`
a. Azure AD Conditional Access `
b. Azure AD Identity Protection `
c. Passthrough Authentication (PTA) `
d. Azure AD App Proxy"
if ($question24 -eq 'b') {
Write-Host "Azure AD Identity Protection" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question25 = Read-Host "Azure China is available to:`
a. Any organization globally, doing business in China `
b. Any organization that wants an Azure failover region in Asia `
c. Organizations wishing to market commercial services in China `
d. Legal entities in China"
if ($question25 -eq 'd') {
Write-Host "Legal entities in China" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question26 = Read-Host "Implementing Azure MFA (multi-factor authentication) ensures we know who a user is who they claim to be. This is an example of: `
a. Authorization`
b. Authentication `
c. Integrity `
d. Confidentiality"
if ($question26 -eq 'b') {
Write-Host "Authentication" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question27 = Read-Host "Which service tool can be used to retrieve an official root-cause analysis for stakeholder distribution?`
(choose the best answer)`
a. Azure Advisor`
b. Azure Monitor `
c. Health `
d. Azure CLI"
if ($question27 -eq 'c') {
Write-Host "Service Health" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question28 = Read-Host "Which tool can be used to interface and implement automation in Azure?`
a. Powershell`
b. Bash `
c. Azure Boards `
d. a or b"
if ($question28 -eq 'd') {
Write-Host "Powershell or the Azure CLI/Bash" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question29 = Read-Host "Which DevOps tool can be used to manage agile projects, produce reports, or provide kanban boards?`
a. Azure Boards`
b. Azure Pipelines `
c. Azure Artifacts `
d. Test Plans"
if ($question29 -eq 'a') {
Write-Host "Azure Boards" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question30 = Read-Host "Which VM access control blocks traffic by default to specific network ports of VMs, but allows traffic for `
a specified time when an admin requests and approves it.`
a. File Integrity`
b. Network Hardening `
c. Logic Apps `
d. Just-in-time"
if ($question30 -eq 'd') {
Write-Host "Just-in-time" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question31 = Read-Host "You need to configure access to Office 365 resources for users at Contoso. `
To group users for assignment of permissions, which of the following options can you use?`
a. Resource group`
b. Microsoft 365 group `
c. Security group `
d. Management group"
if ($question31 -eq 'c') {
Write-Host "Security group" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question32 = Read-Host "Which tool contains a feature which would allow Contoso to continually assess resources, subscriptions, and security issues, `
then aggregate the findings into a single score?`
a. Defender for Cloud`
b. Microsoft 365 group `
c. Network Manager `
d. Trust Score"
if ($question32 -eq 'a') {
Write-Host "Defender for Cloud" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question33 = Read-Host "Which of the following is NOT a capability of Azure Sentinel?`
a. Threat investigation with AI`
b. Video and audio recording services `
c. Detection of previously undetected threats `
d. Incident response and automation"
if ($question33 -eq 'b') {
Write-Host "Video and audio recording services" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question34 = Read-Host "The Contoso Cloud Architecture team needs to simplify deployments of new environments in Azure, including Azure Resource`
Manager (ARM) templates, role-based access, and policies. Which Azure service enables delivery of templates for repeatable deployment and configuration `
of new subscriptions and environments? (choose the best answer)`
a. Azure Blueprints`
b. ARM templates `
c. Azure Policy `
d. Azure Monitoring initiatives"
if ($question34 -eq 'a') {
Write-Host "Azure Blueprints" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question35 = Read-Host "The Contoso Security team wants to identify unsanctioned apps that may be responsible `
for data leakage and unwanted SaaS expenses (aka Shadow IT). What service should they use?`
a. Microsoft Cloud App Security`
b. Azure Identity Protection `
c. Azure AD Conditional Access `
d. Azure Advanced Threat Protection (ATP)"
if ($question35 -eq 'a') {
Write-Host "Microsoft Cloud App Security" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question36 = Read-Host "Which is NOT a method to add secrets or read secrets in Key Vaults?`
a. Azure Powershell`
b. Azure CLI `
c. Azure Documents Security `
d. Azure portal"
if ($question36 -eq 'c') {
Write-Host "Azure Documents Security" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question37 = Read-Host "If Contoso needed to select physical servers in an Azure datacenter with control over the server infrastructure`
which one of the following should they use?
a. Azure Health Monitoring`
b. Azure Dedicated Host `
c. Azure Monitor Workbooks `
d. None of the above would allow this"
if ($question37 -eq 'b') {
Write-Host "Azure Documents Security" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question38 = Read-Host "Which is the best way for Contoso to safely store its certificates so that they're accessible to cloud VMs?`
a. Place the certificates on a network share`
b. Store them on a password protected VM `
c. Store the certificates in Azure Key Vault `
d. Encrypt them in a hidden file for administrator access"
if ($question38 -eq 'c') {
Write-Host "Store the certificates in Azure Key Vault" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question39 = Read-Host "The Contoso Security team has implemented a new security policy. When users connect from an unusual location, `
they must be prompted for MFA. If accessing from an anonymous IP, they should be forced to reset their password. Which feature will you implement?`
a. Azure AD Conditional Access`
b. Passthrough Authentication (PTA) `
c. Azure AD Identity Protection `
d. Azure MFA"
if ($question39 -eq 'c') {
Write-Host "Azure AD Identity Protection" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question40 = Read-Host "You need to implement multi-factor authentication for your Azure Active Directory users. However, `
you only want to prompt for an additional authentication factor when users are not in a trusted location on an unmanaged device. `
Which feature should you implement? (choose the best answer)`
a. Azure AD Conditional Access`
b. Azure AD Identity Protection `
c. Azure Information Protection `
d. Privileged Identity Management"
if ($question40 -eq 'a') {
Write-Host "Azure AD Conditional Access" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question41 = Read-Host "Contoso IT assigns permissions at the resource group level for all resources deployed to Azure. `
Will resources in the resource group inherit permissions assigned to the resource group?  `
a. Yes `
b. No"
if ($question41 -eq 'a') {
Write-Host "Yes" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question42 = Read-Host "You are responsible for creating Azure resources at Contoso using ARM templates. `
You need to ensure Azure resources are only created in approved regions. What should you use to enforce this requirement?`
a. Azure Security Center`
b. Azure Policy `
c. Azure Blueprint `
d. Azure locks"
if ($question42 -eq 'b') {
Write-Host "Azure Policy" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question43 = Read-Host "In a Site-to-Site VPN, the____ is the cross-premises gateway that connects your Azure Virtual Network with your on-premises VPN appliances.`
a. Private Endpoint`
b. Application Gateway `
c. Local Network Gateway `
d. Virtual Network Gateway"
if ($question43 -eq 'd') {
Write-Host "Virtual Network Gateway" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question44 = Read-Host "Contoso IT has deployed multiple Azure VM across 15 virtual networks. How can you most securely limit `
inbound traffic and protect these VMs from unwanted inbound requests? (choose the best answer)`
a. Deploy a virtual network gateway`
b. Deploy an Azure Load Balancer `
c. Deploy an Azure Firewall `
d. Create a network security group (NSG)"
if ($question44 -eq 'c') {
Write-Host "Deploy an Azure Firewall" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question45 = Read-Host "Which product is run and managed by the service provider, such as Office 365?`
a. IaaS`
b. PaaS `
c. SaaS `
d. On-Prem"
if ($question45 -eq 'c') {
Write-Host "SaaS" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question46 = Read-Host "Which Azure service can help Contoso protect its App Service from an overload of`
large volumes of network traffic to servers in an attack?`
a. Azure DDoS Protection`
b. Network security groups `
c. Azure Firewall`
d. Limiting virtual networks"
if ($question46 -eq 'c') {
Write-Host "SaaS" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question47 = Read-Host "Your company hosts a global web application. You need to ensure users can access the application `
from any country in the world with minimal latency. Which load balancing options should you use?`
a. Azure Front Door`
b. Azure App Gateway `
c. Azure Traffic Manager`
d. Azure Load Balancer"
if ($question47 -eq 'a') {
Write-Host "Azure Front Door" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question48 = Read-Host "Contoso Financial Services hosts an application that stores customer data in json format in MongoDB. `
They want to migrate the application to Azure, and want to minimize code updates. Which Azure database platform will best meet their requirements? `
a. Azure Data Lake`
b. Cosmos DB `
c. Azure SQL Database`
d. Azure MySQL Database"
if ($question48 -eq 'b') {
Write-Host "Cosmos DB" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question49 = Read-Host "Which is NOT an Azure service purchase option? `
a. Cloud Solution Provider`
b. Web direct `
c. Enterprise agreement`
d. Single point contract"
if ($question49 -eq 'd') {
Write-Host "Single point contract" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question50 = Read-Host "Contoso needs to select an IoT management platform for Internet-connected devices at their retail locations.`
They have no IoT expertise, and want a solution that minimizes the need for custom development. Which solution will best meet their requirement? `
a. Event Hubs`
b. Azure IoT Central `
c. Azure IoT Solution Accelerators`
d. Azure IoT Edge"
if ($question50 -eq 'b') {
Write-Host "Azure IoT Central" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question51 = Read-Host "Capital Expenditure (CapEx) is money spent on physical infrastructure. CapEx typically requires estimation of planned expenditures. `
a. True `
b. False"
if ($question51 -eq 'a') {
Write-Host "True" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question52 = Read-Host "You attempt to create several Azure SQL Database instances & receive a message `
that you must increase the limits in your Azure subscription. What should you do?  `
a. Create an Azure policy`
b. Create an Azure Blueprint `
c. Upgrade your Azure subscription level`
d. Open a support request"
if ($question52 -eq 'd') {
Write-Host "Open a support request" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question53 = Read-Host "Which is NOT a benefit of cloud computing?  `
a. Reservability`
b. Agility `
c. Elasticity`
d. Scalability"
if ($question53 -eq 'a') {
Write-Host "Reservability" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question54 = Read-Host "Contoso needs to automate version updates of their PaaS application hosted in Azure. Which service can best help meet this requirement?  `
a. Azure Automation `
b. Azure Application Insights `
c. Azure DevOps`
d. Azure Advisor"
if ($question54 -eq 'c') {
Write-Host "Azure DevOps" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question55 = Read-Host "Contoso is planning to move to Azure, but currently hosts business applications in a shared virtualization infrastructure`
on-premises, utilizing Hyper-V. This is an example of which cloud computing model?  `
a. Private Cloud `
b. Public Cloud `
c. Government Cloud`
d. Hybrid Cloud"
if ($question55 -eq 'a') {
Write-Host "Private Cloud" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question56 = Read-Host "Azure VMs in different subnets in the same virtual network can communicate by default. `
a. True `
b. False"
if ($question56 -eq 'a') {
Write-Host "True" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question57 = Read-Host "Azure App Service, Azure SQL Database, and Cosmos DB are examples of which category of cloud computing service? `
a. Software as a Service (SaaS)`
b. Platform as a Service (PaaS) `
c. Infrastructure as a Service (IaaS)`
d. Function as a Service (FaaS)"
if ($question57 -eq 'b') {
Write-Host "Platform as a Service (PaaS)" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question58 = Read-Host "Azure VMs run in a software layer known as the hybrid visor. `
a. True `
b. False"
if ($question58 -eq 'b') {
Write-Host "False" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question59 = Read-Host "Azure VMs running in managed containers are severless compute resources. `
a. True `
b. False"
if ($question59 -eq 'a') {
Write-Host "True" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}
$question60 = Read-Host "______ protects against datacenter-level failures. `
a. Availability Set`
b. Availability Zone `
c. VM scale set`
d. Azure VM"
if ($question60 -eq 'b') {
Write-Host "Availability Zone" -ForegroundColor Green
}
else
{
Write-Host "Incorrect" -ForegroundColor Red
}

#------Later Plan to add an incorrect answer counter and Pass/Fail------#
#$scorecheck = (Where-Object {_.Write-Host -eq "Incorrect"}).Count
#if ($scorecheck -gt 0) {
#   $Results = New-Object -ComObject 
#   $Results.popup("Number of incorrect answers: $wronganswers", 'out of 60')
#    }
#$wronganswers = $scorechecker.content -split "Incorrect" | Measure-Object | Select-Object -Exp Count