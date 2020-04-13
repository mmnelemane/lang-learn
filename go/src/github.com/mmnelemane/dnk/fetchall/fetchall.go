// Fetchall fetches URLs in parallel and reports their times and sizes.
package main

import (
    "fmt"
    "io"
    "io/ioutil"
    "net/http"
    "os"
    "time"
    "strconv"
)

func main() {
    ch := make(chan string)
    max_tries,err := strconv.Atoi(os.Args[1])
    min_time := 0.0
    if err != nil {
        fmt.Printf("Error in number of trials\n")
        os.Exit(1)
    }

    for trial := 0; trial < max_tries; trial++ {
        fmt.Printf("\n****** Trial Number: %d*******\n", trial+1)
        start := time.Now()
        for _, url := range os.Args[2:] {
            go fetch(url, ch) // start a goroutine
        }
        for range os.Args[2:] {
            fmt.Println(<-ch) // receive from channel ch
        }
        curr_time := time.Since(start).Seconds()
        fmt.Printf("\nTotal Time of %.2fs elapsed\n", curr_time)
        if min_time > curr_time || min_time == 0.0 {
            min_time = curr_time
        }
        fmt.Printf("\n****************************\n")
    }
    fmt.Printf("\n********Minimum time taken: %.2fs **********\n", min_time)
}

func fetch(url string, ch chan<- string) {
    start := time.Now()
    resp, err := http.Get(url)
    if err != nil {
        ch <- fmt.Sprint(err) // send to channel ch
        return
    }

    nbytes, err := io.Copy(ioutil.Discard, resp.Body)
    resp.Body.Close() // don't leak resources
    if err != nil {
        ch <- fmt.Sprintf("while reading %s: %v", url, err)
        return
    }
    secs := time.Since(start).Seconds()
    ch <- fmt.Sprintf("%.2fs   %7d   %s", secs, nbytes, url)
}
