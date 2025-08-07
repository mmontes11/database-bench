# MariaDB Galera on Topolvm

```bash
make mariadb
make sysbench-prepare
make sysbench
```

# sysbench

```bash
SQL statistics:
    queries performed:
        read:                            7962192
        write:                           2028781
        other:                           1368579
        total:                           11359552
    transactions:                        564946 (1882.96 per sec.)
    queries:                             11359552 (37861.23 per sec.)
    ignored errors:                      3782   (12.61 per sec.)
    reconnects:                          0      (0.00 per sec.)

General statistics:
    total time:                          300.0306s
    total number of events:              564946

Latency (ms):
         min:                                    8.48
         avg:                                   33.98
         max:                                  148.02
         95th percentile:                       49.21
         sum:                             19199519.25

Threads fairness:
    events (avg/stddev):           8827.2812/26.37
    execution time (avg/stddev):   299.9925/0.01
```