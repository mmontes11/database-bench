# MariaDB replication on Topolvm

```bash
make mariadb
make sysbench-prepare
make sysbench
make physicalbackup
```

# sysbench (1 thread)

### Semi-sync replication

```
SQL statistics:
    queries performed:
        read:                            1887774
        write:                           539364
        other:                           269682
        total:                           2696820
    transactions:                        134841 (449.47 per sec.)
    queries:                             2696820 (8989.33 per sec.)
    ignored errors:                      0      (0.00 per sec.)
    reconnects:                          0      (0.00 per sec.)

General statistics:
    total time:                          300.0018s
    total number of events:              134841

Latency (ms):
         min:                                    1.63
         avg:                                    2.22
         max:                                   93.41
         95th percentile:                        2.71
         sum:                               299851.38

Threads fairness:
    events (avg/stddev):           134841.0000/0.00
    execution time (avg/stddev):   299.8514/0.00

```

### Semi-sync replication + MaxScale

```
TODO
```

### Async replication

```
TODO
```

### Async replication + MaxScale

```
TODO
```
