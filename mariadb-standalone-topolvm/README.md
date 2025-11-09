# MariaDB standalone on Topolvm

```bash
make mariadb
make sysbench-prepare
make sysbench
make physicalbackup
```

# sysbench

Threads: 4

MariaDB version: 11.8.2

MaxScale version: 23.08.5  

### Standalone

```
SQL statistics:
    queries performed:
        read:                            6818490
        write:                           1947659
        other:                           973906
        total:                           9740055
    transactions:                        486871 (1622.88 per sec.)
    queries:                             9740055 (32466.42 per sec.)
    ignored errors:                      164    (0.55 per sec.)
    reconnects:                          0      (0.00 per sec.)

General statistics:
    total time:                          300.0029s
    total number of events:              486871

Latency (ms):
         min:                                    1.62
         avg:                                    2.46
         max:                                  214.22
         95th percentile:                        2.97
         sum:                              1199471.34

Threads fairness:
    events (avg/stddev):           121717.7500/89.67
    execution time (avg/stddev):   299.8678/0.00
```