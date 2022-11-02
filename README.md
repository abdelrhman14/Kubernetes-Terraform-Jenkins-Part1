# Kubernetes-Terraform-Jenkins-Part1
### Network Infrastructure Terraform
#### 1- VPC
####  1.1 management_subnet
    1. create vpc [top-vpc]
    2. create the first subnet [management_subnet] (Public Subnet) 10.0.0.0/24
    3. create router [my-router]
    4. create NAT gateway [my-nat]
    5. create private VM  [iti-instance] ----> [hint] No Ip address so, internet connection through NAT
#### 1.2 restricted subnet
    1. Private standard GKE cluster
    2. [hint] Only the private instance can access the private cluster
### Details 
    1.1 VPC network
    1.2 Two subnet [ management_subnet & restricted subnet ]
    1.3 NAT gateway
    1.4 private VM 
    1.5 firewall rule to enforce the VM to be private by allowing access only through  IAP
    1.6 creating our private cluster
    1.7 creating the node
 ![ahly7](https://user-images.githubusercontent.com/42601017/198861398-fc0f631a-eb27-455a-9d6f-740fae39c918.png)
    
    ~ terraform init
    ~ terraform plan
    ~ terraform apply
### images deployed on GKE must come from GCR or DockerHub [I push image on Dockerhub]
    1.1
        ~ docker build -t jenkins_pub .
        ~ docker tag nodejs-image33:latest abdelrahman1413/jenkins_pub
        ~ docker push abdelrahman1413/jenkins_pub
![ttttttttttt](https://user-images.githubusercontent.com/42601017/199498781-7a714072-8052-4067-9991-5d6c9493cea6.png)

### Connect to private cluster through private vm
 1. ~ gcloud compute ssh iti-instance --tunnel-through-iap
 2. ~ gcloud auth login
 3. ~ sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin && gcloud container clusters get-credentials iti-cluster --zone us-east1-b

 ![ahly3](https://user-images.githubusercontent.com/42601017/198861741-509329a9-1606-480a-bc73-33694bdaf392.png)
 ### Create Docker File [Jenkins]
    Include :
        1. Docker
        2. Git
        3. Kubectl
 
 #### 1. Create Jenkins deployment
 #### 2. Create Jenkins Server
 #### 3. Create NameSpace [Jenkins]
 #### 4. Create Volume

![rrrr](https://user-images.githubusercontent.com/42601017/199499977-54909aee-773b-49db-a6b3-c7a0b002777e.png)

