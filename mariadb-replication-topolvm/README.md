# MariaDB replication on Topolvm

```bash
make mariadb
make maxscale
make sysbench-prepare
make sysbench
make physicalbackup
```

# sysbench

Threads: 4
MariaDB version: 11.8.2

### Semi-sync replication

```
SQL statistics:
    queries performed:
        read:                            4919530
        write:                           1405158
        other:                           702653
        total:                           7027341
    transactions:                        351258 (1170.84 per sec.)
    queries:                             7027341 (23424.12 per sec.)
    ignored errors:                      137    (0.46 per sec.)
    reconnects:                          0      (0.00 per sec.)

General statistics:
    total time:                          300.0038s
    total number of events:              351258

Latency (ms):
         min:                                    2.16
         avg:                                    3.41
         max:                                   21.80
         95th percentile:                        4.18
         sum:                              1199475.11

Threads fairness:
    events (avg/stddev):           87814.5000/41.08
    execution time (avg/stddev):   299.8688/0.00
```

### Semi-sync replication, WaitPoint=AfterSync

```
TODO
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