# Notes

## Makefile
envsubst fills all vars and $values for helm charts was replaced with nothing before declaring $$BRANCH
```
minikube kubectl -- kustomize kubernetes/overlays/local | envsubst '$$BRANCH' | minikube kubectl -- apply -f - 
```

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
