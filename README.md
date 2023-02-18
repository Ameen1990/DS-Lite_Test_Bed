# DS-Lite_Test_Bed



![Fig 6](https://user-images.githubusercontent.com/45686881/219900682-4d20a6e3-9187-4019-a216-d74e707780be.png)



Building a Test-Bed for DS-Lite Technology for IPv6 Transition Technology

Ansible software was used in order to automate the porcess of building the machines (IPv4 client, IPv4 server, B4 and AFTR).


Just get the toplogy built, as shown in the the above topoloy.

All machines are CentOS-7 and built using VMware Workstation Player.

Pre-requisites:-

1- yum update

2- yum install epel-release

3- yum install ansible

To runn the installation scripts, run the below commannds: -

On IPv4 clinet: -

`
ansible-playbook IPv4-client.yml
`

On IPv4 Server: -

`
ansible-playbook IPv4-server.yml
`

On B4 Router: -

`
ansible-playbook B4.yml
`

On AFTR Router: -

`
ansible-playbook AFTR.yml
`


On Attacker machine: -

`
ansible-playbook attacker.yml
`
