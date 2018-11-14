oc login https://master.awsandlinuxguru.in:8443 -u demo -p redhat
oc new-project wordpress-app
cd /brijesh/
oc create -f mysql-volumeclaim.yaml 
sleep 10
oc create -f wordpress-volumeclaim.yaml
sleep 10
oc create -f pod-mysql.yaml
sleep 60
oc create -f service-mysql.yaml
sleep 10
oc create -f pod-wordpress.yaml
sleep 60
oc create -f service-wp.yaml
sleep 10
oc create route edge --service=wpfrontend
sleep 10
