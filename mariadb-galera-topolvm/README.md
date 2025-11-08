# MariaDB Galera on Topolvm

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

### Galera

```
SQL statistics:
    queries performed:
        read:                            5084912
        write:                           1280228
        other:                           898557
        total:                           7263697
    transactions:                        363093 (1210.29 per sec.)
    queries:                             7263697 (24212.01 per sec.)
    ignored errors:                      115    (0.38 per sec.)
    reconnects:                          0      (0.00 per sec.)

General statistics:
    total time:                          300.0033s
    total number of events:              363093

Latency (ms):
         min:                                    2.09
         avg:                                    3.30
         max:                                  211.73
         95th percentile:                        4.33
         sum:                              1199473.28

Threads fairness:
    events (avg/stddev):           90773.2500/18.16
    execution time (avg/stddev):   299.8683/0.00
```

### Galera + MaxScale

```
SQL statistics:
    queries performed:
        read:                            3987480
        write:                           1015376
        other:                           693250
        total:                           5696106
    transactions:                        284744 (949.12 per sec.)
    queries:                             5696106 (18986.52 per sec.)
    ignored errors:                      76     (0.25 per sec.)
    reconnects:                          0      (0.00 per sec.)

General statistics:
    total time:                          300.0074s
    total number of events:              284744

Latency (ms):
         min:                                    2.51
         avg:                                    4.21
         max:                                   20.05
         95th percentile:                        5.37
         sum:                              1199566.83

Threads fairness:
    events (avg/stddev):           71186.0000/7174.01
    execution time (avg/stddev):   299.8917/0.01
```