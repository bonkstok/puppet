These modules are for testing purposes. 

Some of these modules I used the puppet apply command.
This means that some files were pushed. 
In your own environment you would like to pull from the Puppet master instead.
You can by adding the lines currently in /examples/*.pp to /etc/puppetlabs/code/environments/production/manifests/nodes.pp
