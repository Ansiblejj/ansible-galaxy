```.tst
├── ansible.cfg         # Project-specific settings
├── hosts.yml           # Your inventory (servers & groups)
├── site.yml            # The main "master" playbook
├── group_vars/         # Variables for groups (e.g., [web_servers])
│   └── web_servers.yml
├── host_vars/          # Variables for specific servers
│   └── db_server1.yml
└── roles/              # Reusable folders for specific tasks
    └── common/         # Tasks every server needs (e.g., updates)
    └── webserver/      # Tasks specific to web servers

