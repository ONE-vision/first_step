yc vpc network create \
  --name edge \
  --labels my-label=my-value \
  --description "my-network"

 yc vpc subnet create \
  --name pluto \
  --zone ru-central1-a \
  --range 10.1.2.0/24 \
  --network-name edge \
  --description "my-subnet"
  
 yc compute instance create  
  --name venus  
  --zone ru-central1-a  
  --network-interface subnet-name=pluto,nat-ip-version=ipv4  
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts-gpu 
  --ssh-key /home/mercury/.ssh/isida.pub