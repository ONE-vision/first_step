yc vpc network create  --name edge  --description "edge network" 

yc vpc subnet create  --name pluto  --description "Pluto subnet"  --network-name edge  --zone ru-central1-a  --range 10.131.0.0/24

yc compute instance create  --name venus  --zone ru-central1-a  --network-interface subnet-name=pluto,nat-ip-version=ipv4  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts-gpu --ssh-key C:\isida\isida.pub

pause