include ../make/base.mk

##@ MariaDB replication on Topolvm

.PHONY: mariadb
mariadb: kubectl ## Deploy MariaDB.
	$(KUBECTL) apply -f ./mariadb

.PHONY: maxscale
maxscale: kubectl ## Deploy MaxScale.
	$(KUBECTL) apply -f ./maxscale

.PHONY: sysbench-sql
sysbench-sql: kubectl ## Prepare sysbench SQL resources.
	$(KUBECTL) apply -f ./sql
	$(KUBECTL) wait --for=condition=ready database sbtest
	$(KUBECTL) wait --for=condition=ready user sbtest
	$(KUBECTL) wait --for=condition=ready grant sbtest

.PHONY: sysbench-prepare
sysbench-prepare: kubectl sysbench-sql ## Prepare sysbench tests.
	$(KUBECTL) apply -f ./sysbench/sysbench-prepare-job.yaml

.PHONY: sysbench
sysbench: kubectl ## Run sysbench tests.
	$(KUBECTL) apply -f ./sysbench/sysbench-cronjob.yaml
	$(KUBECTL) create job sysbench --from cronjob/sysbench

.PHONY: physicalbackup
physicalbackup: kubectl ## Deploy PhysicalBackups.
	$(KUBECTL) apply -f ./physicalbackup