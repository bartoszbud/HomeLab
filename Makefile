.PHONY: fmt argocd-secret k8s-cleanup

minikube:
	@echo "Starting minikube..."
	bash kubernetes/minikube.sh

local-env:
	@echo "Setting up local environment..."
	minikube kubectl -- kustomize kubernetes/overlays/local | envsubst '$$BRANCH' | minikube kubectl -- apply -f - 

argocd-secret:
	@echo "Retrieving ArgoCD secret..."
	minikube kubectl -- -n argocd get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d; echo

argocd-expose:
	@echo "Exposing ArgoCD..."
	minikube kubectl -- -n argocd port-forward svc/argocd-server 8080:443

k8s-cleanup:
	@echo "Getting rid of unhealthy pods..."
	kubectl get pods -A | grep -E "Evicted|Error|Pending|Unknown|ContainerStatusUnknown|CrashLoopBackOff|Completed|Terminating" | awk '{print $1, $2}' | while read ns pod; do kubectl delete pod -n "$ns" "$pod" --force; done

fmt:
	@echo "Formatting code..."
	terraform fmt -recursive terraform