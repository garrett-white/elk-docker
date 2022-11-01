#!/bin/bash

curl -u elastic:changeme --request POST --url http://127.0.0.1:5601/api/fleet/package_policies --header 'Content-Type: application/json' --header 'kbn-xsrf: xx' -d'
{
    "id": "elastic-defend",
    "name": "elastic-defend",
    "namespace": "default",
    "description": "",
    "package": {
      "name": "endpoint",
      "version": ""
    },
    "enabled": true,
    "policy_id": "windows-policy",
    "inputs": [
      {
        "type": "endpoint",
        "enabled": true,
	"streams": [],
        "config": {
          "integration_config": {
            "value": {
              "type": "endpoint",
              "endpointConfig": {
                "preset": "EDRComplete"
              }
            }
          },
          "policy": {
            "value": {
              "windows": {
                "events": {
                  "dll_and_driver_load": true,
                  "dns": true,
                  "file": true,
                  "network": true,
                  "process": true,
                  "registry": true,
                  "security": true
                },
                "malware": {
                  "mode": "prevent",
                  "blocklist": true
                },
                "ransomware": {
                  "mode": "off",
                  "supported": false
                },
                "memory_protection": {
                  "mode": "off",
                  "supported": false
                },
                "behavior_protection": {
                  "mode": "off",
                  "supported": false
                },
                "popup": {
                  "malware": {
                    "message": "",
                    "enabled": true
                  },
                  "ransomware": {
                    "message": "",
                    "enabled": false
                  },
                  "memory_protection": {
                    "message": "",
                    "enabled": false
                  },
                  "behavior_protection": {
                    "message": "",
                    "enabled": false
                  }
                },
                "logging": {
                  "file": "info"
                },
                "antivirus_registration": {
                  "enabled": false
                },
                "attack_surface_reduction": {
                  "credential_hardening": {
                    "enabled": false
                  }
                }
              },
              "mac": {
                "events": {
                  "process": true,
                  "file": true,
                  "network": true
                },
                "malware": {
                  "mode": "prevent",
                  "blocklist": true
                },
                "behavior_protection": {
                  "mode": "off",
                  "supported": false
                },
                "memory_protection": {
                  "mode": "off",
                  "supported": false
                },
                "popup": {
                  "malware": {
                    "message": "",
                    "enabled": true
                  },
                  "behavior_protection": {
                    "message": "",
                    "enabled": false
                  },
                  "memory_protection": {
                    "message": "",
                    "enabled": false
                  }
                },
                "logging": {
                  "file": "info"
                }
              },
              "linux": {
                "events": {
                  "process": true,
                  "file": true,
                  "network": true,
                  "session_data": false,
                  "tty_io": false
                },
                "malware": {
                  "mode": "prevent",
                  "blocklist": true
                },
                "behavior_protection": {
                  "mode": "off",
                  "supported": false
                },
                "memory_protection": {
                  "mode": "off",
                  "supported": false
                },
                "popup": {
                  "malware": {
                    "message": "",
                    "enabled": true
                  },
                  "behavior_protection": {
                    "message": "",
                    "enabled": false
                  },
                  "memory_protection": {
                    "message": "",
                    "enabled": false
                  }
                },
                "logging": {
                  "file": "info"
                }
              }
            }
          }
        }
      }
    ],
    "force": true
}
'
