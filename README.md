# KubernetesPostgres
Deploy Postgres to my local Docker Desktop Kubernetes
This repo is simply a set of yaml files to create a Local Kubernetes implementation of  Postgres

It Creates;
  1)  a config map cm.yaml that contains the DB name and user
  2) A secrets file secret.yaml that contains the password installation
  3) pvc-pv.yaml badly named, it should be pv-pvc.yaml - this creates a persistent volume and a claim
  4) deploy.yaml  deploys postgres:latest - the pull policy may need to be changed as the mount point!
  5) nodeport.yaml - creates a NodePort service so the DB can be access with db managment tools ****
  
 ##N.B
 **** I waisted a lot of time not being able to connect to the DB! In the end I connected with pgadmin4 and added a new role. Once the new role was added 
 everything worked as planned.
 
 ##FYI
 The secret would have been better implmented as a file mounted into the container
 To get the pwd to work 
 
 echo -n <pwd> | base64 > <textfile> This creates a text file with NO CrLF that has the password base64 encrypted. This should then be used in the secret
 
