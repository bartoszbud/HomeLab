# Notes

## Ansible

Create Python virtual environment
```
python3 -m venv {virtual_env_name}
```

Activate Python virtual environment
```
source ansible/{virtual_env_name}/bin/activate
```

Upgrade packet manager
```
pip install --upgrade pip
```

Install dependencies
```
pip install -r requirements.txt
```

Initialize role
```
ansible-galaxy role init {role_name}
```

Initialize molecule test scenario
```
cd roles/{role_name};
molecule init scenario
```
