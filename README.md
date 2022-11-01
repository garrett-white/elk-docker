ansible playbook (local) for dockerized elastic stack with automated first-time setup.
To build/deploy, cd into this directory and run: sudo ansible-playbook -k elk-run-all.yml

To update containers without reinstalling all configs, run: sudo ansible-playbook -k update-elk-containers.yml# elk-docker

kibana.yml is hardcoded with ip address to my vm, manually create agent policy with enrollment token
.\elastic-agent.exe install --url=http://192.168.79.128:8220 --enrollment-token=Tm55c0w0UUJhNGk5a1Q1YklNRmo6UTdfOUZOM2pSMzJOYVp0bmhvMW5iZw== --insecure

get enrollment api key
curl -u elastic:changeme --request GET --url http://127.0.0.1:5601/api/fleet/enrollment_api_keys
