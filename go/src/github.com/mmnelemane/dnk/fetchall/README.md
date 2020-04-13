The program fetches several website contents as listed through the command line
and calculates the time elapsed in fetching. Multiple trials are taken and the time
taken to fetch all the sites listed is printed. This is expected to reduce after the
first trial due to caching. 

At the end, the program prints the minimum time taken for fetching the listed websites.

The execution can be done with following steps:

```
# go build fetchall.go
# ./fetchall <num_trials> <url1> <url2> ... <urlN>
```

Example:

```
# ./fetchall 3 http://github.com http://google.com http://golang.org http://gopl.io http://godoc.org

****** Trial Number: 1*******
0.54s     11843   http://google.com
0.64s     11077   http://golang.org
0.82s      7228   http://godoc.org
0.99s    136288   http://github.com
1.52s      4154   http://gopl.io

Total Time of 1.52s elapsed

****************************

****** Trial Number: 2*******
0.21s     11854   http://google.com
0.27s     11077   http://golang.org
0.32s    136288   http://github.com
0.39s      4154   http://gopl.io
0.61s      7228   http://godoc.org

Total Time of 0.61s elapsed

****************************

****** Trial Number: 3*******
0.22s     11813   http://google.com
0.23s    136288   http://github.com
0.26s     11077   http://golang.org
0.39s      4154   http://gopl.io
0.60s      7228   http://godoc.org

Total Time of 0.60s elapsed

****************************

********Minimum time taken: 0.60s **********
```
