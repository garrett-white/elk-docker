ansible-playbook /opt/playbooks/elk-docker/update-local-checkout.yml &

ansible-playbook /opt/playbooks/kolide-fleet/update-local-checkout.yml &

ansible-playbook /opt/playbooks/windows-dc/update-local-checkout.yml &

ansible-playbook /opt/playbooks/elk-docker/add-aliases.yml &

