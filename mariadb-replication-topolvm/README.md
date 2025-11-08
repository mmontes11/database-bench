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
MaxScale version: 23.08.5  

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

### Semi-sync replication + WaitPoint=AfterSync

```
SQL statistics:
    queries performed:
        read:                            5008178
        write:                           1430467
        other:                           715309
        total:                           7153954
    transactions:                        357582 (1191.93 per sec.)
    queries:                             7153954 (23846.24 per sec.)
    ignored errors:                      145    (0.48 per sec.)
    reconnects:                          0      (0.00 per sec.)

General statistics:
    total time:                          300.0028s
    total number of events:              357582

Latency (ms):
         min:                                    2.06
         avg:                                    3.35
         max:                                   24.09
         95th percentile:                        4.10
         sum:                              1199454.85

Threads fairness:
    events (avg/stddev):           89395.5000/16.52
    execution time (avg/stddev):   299.8637/0.00
```

### Semi-sync replication + MaxScale

```
SQL statistics:
    queries performed:
        read:                            4065992
        write:                           1161408
        other:                           580750
        total:                           5808150
    transactions:                        290322 (967.72 per sec.)
    queries:                             5808150 (19360.09 per sec.)
    ignored errors:                      106    (0.35 per sec.)
    reconnects:                          0      (0.00 per sec.)

General statistics:
    total time:                          300.0058s
    total number of events:              290322

Latency (ms):
         min:                                    2.48
         avg:                                    4.13
         max:                                   17.93
         95th percentile:                        5.47
         sum:                              1199556.54

Threads fairness:
    events (avg/stddev):           72580.5000/7425.68
    execution time (avg/stddev):   299.8891/0.01
```

### Async replication

```
SQL statistics:
    queries performed:
        read:                            5322674
        write:                           1520307
        other:                           760233
        total:                           7603214
    transactions:                        380042 (1266.79 per sec.)
    queries:                             7603214 (25343.71 per sec.)
    ignored errors:                      149    (0.50 per sec.)
    reconnects:                          0      (0.00 per sec.)

General statistics:
    total time:                          300.0034s
    total number of events:              380042

Latency (ms):
         min:                                    1.92
         avg:                                    3.16
         max:                                   19.86
         95th percentile:                        3.89
         sum:                              1199434.42

Threads fairness:
    events (avg/stddev):           95010.5000/21.08
    execution time (avg/stddev):   299.8586/0.00
```

### Async replication + MaxScale

```
SQL statistics:
    queries performed:
        read:                            4218116
        write:                           1204825
        other:                           602472
        total:                           6025413
    transactions:                        301178 (1003.91 per sec.)
    queries:                             6025413 (20084.29 per sec.)
    ignored errors:                      116    (0.39 per sec.)
    reconnects:                          0      (0.00 per sec.)

General statistics:
    total time:                          300.0057s
    total number of events:              301178

Latency (ms):
         min:                                    2.42
         avg:                                    3.98
         max:                                   17.07
         95th percentile:                        5.28
         sum:                              1199537.26

Threads fairness:
    events (avg/stddev):           75294.5000/7936.71
    execution time (avg/stddev):   299.8843/0.01
```