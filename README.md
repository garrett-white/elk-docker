ansible playbook (local) for dockerized elastic stack with automated first-time setup.
To build/deploy, cd into this directory and run: sudo ansible-playbook -k elk-run-all.yml

Kibana will be listening on http://127.0.0.1:5601. On a Linux host there should be a shortcut on the desktop pointing to Kibana's homepage. On a Windows PC, this playbook will surely fail... ...if you have problems, it works on my PC (CentOS 7 w/ KDE) so try that.

To update containers without reinstalling all configs, run: sudo ansible-playbook -k update-elk-containers.yml# elk-docker
