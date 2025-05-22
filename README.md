# terraform
# This is my simple virtual network deployment on my azure portal:
I have followed these steps
1) az login --use-device-code to login to azure portal
2) az account show
3)  export MSYS_NO_PATHCONV=1 : for gitbash which should not break the path
4)  az ad sp create-for-rbac --name test_sp --role Contributor --scopes /subscriptions/ddksdmksfmksdks ( we use service principle to automate authinciation without human interventation, best for cicd and scripting)
5)  edit .bashrc file vim ~./bashrc  and add these parameter below
   a) export ARM_SUBSCRIPTION_ID="139040e0-97a2-41e9-b9b9-d474362c6ba2"
   b) export ARM_TENANT_ID="b5becf8d-af1f-44d7-95ae-475a507d128f"
   c) export ARM_CLIENT_ID="cadf7c7b-276d-4d3sksmf84-32af5ecc4752"   
   d) export ARM_CLIENT_SECRET="fkdfmkdmf"  (password)
6)  source ~/.bashrc (reload this file)

once this is done, main.tf is implemented which have essential parameters for vnet
