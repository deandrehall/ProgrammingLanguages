package main

import (
 "fmt"
 "os"
 "strconv"
)

func fibonacci_recursive(position int)(series []int){
	
	if(position == 1){
        
        return []int{1}
    }
    
    if(position == 2){
        
        return []int{1,1}
    }

        series = fibonacci_recursive(position - 1)
        return append(series, series[len(series) - 1] + series[len(series) - 2])
        
}

func fibonacci_immutable(position int)(series []int){
	
	if (position == 1){ return []int{1} }
	
	next_series := func(series []int)( []int) {
		new_series := append(series, []int{series[len(series) - 1] + series[len(series) - 2]} ...)
    	return new_series
	}
	
	series = []int{1,1}
	
	for i := 2; i < position; i++{
		series = next_series(series)
	}
	
	return series
}

func fibonacci_mutable(position int)(series []int){

   series = []int{}
    
    if (position >= 1){
        series = append(series, 1)
    }
    
    if (position >= 2){
        series = append(series, 1)
    }
    
   for i := 2; i < position; i++{
        series = append(series, series[len(series) - 1] + series[len(series) - 2])  
   }
    
    return series
}

func main(){
    position, _ :=  strconv.Atoi(os.Args[1])
    fmt.Println("Fibonacci sequence for recursive function.")
    fmt.Println(fibonacci_recursive( position ))
    fmt.Println("Fibonacci sequence for immutable function.")
    fmt.Println(fibonacci_immutable( position ))
    fmt.Println("Fibonacci sequence for mutable function.")
    fmt.Println(fibonacci_mutable( position ))
}