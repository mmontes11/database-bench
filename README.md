# database-bench
Database benchmarks in Kubernetes

### Benchmarks

- [mariadb-standalone-topolvm](./mariadb-standalone-topolvm/)
- [mariadb-replication-topolvm](./mariadb-replication-topolvm/)
- [mariadb-galera-topolvm](./mariadb-galera-topolvm/)

### Storage benchmarks

Local storage via Topolvm on nvme drives is used as storage in all benchmarks. Refer to the [storage benchmarks ](https://github.com/mmontes11/storage-bench) for further reference.

### Kubernetes cluster

Kubernetes cluster based on Talos and provisioned by [k8s-management](https://github.com/mmontes11/k8s-management) and [k8s-infrastructure](https://github.com/mmontes11/k8s-infrastructure) is used in all benchmarks.