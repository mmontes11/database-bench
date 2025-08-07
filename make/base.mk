.PHONY: all
all: help

##@ General

.PHONY: help
help: ## Display this help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Tools

## Tool Binaries
KUBECTL ?= $(LOCALBIN)/kubectl
## Tool Versions
KUBECTL_VERSION ?= v1.33.1

kubectl: ## Download kubectl locally if necessary.
ifeq (,$(wildcard $(KUBECTL)))
ifeq (,$(shell which kubectl 2>/dev/null))
	@{ \
	set -e ;\
	mkdir -p $(dir $(KUBECTL)) ;\
	OS=$(shell $(GO) env GOOS) && ARCH=$(shell $(GO) env GOARCH) && \
	curl -sSLo $(KUBECTL) https://dl.k8s.io/release/$(KUBECTL_VERSION)/bin/linux/$${ARCH}/kubectl ;\
	chmod +x $(KUBECTL) ;\
	}
else
KUBECTL = $(shell which kubectl)
endif
endif