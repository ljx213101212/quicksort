//
//  main.swift
//  QuickSort-
//
//  Created by student on 10/2/15.
//  Copyright (c) 2015 ISS. All rights reserved.
//
import Foundation

println("hello")

var diceRoll:Int = Int(arc4random()) % 100
//println(diceRoll)

var random_arr = Array<Int>(count:10,repeatedValue:0)

for var i = 0 ; i < random_arr.count;i++ {
    random_arr[i] = Int(arc4random()) % 100;
    }
println(random_arr)

var quick_arr = [ 2,6,4,8,7,1,9,5,3,10 ]

//var change_arr = quick_arr
var change_arr = random_arr
//var temp = quick_arr [0]

//println(temp)


func Sort (left:Int , right:Int){
    
    if (left < right){
        
        var pivot = (left + right) / 2
        //println(pivot)
        var i = left - 1
        var j = right + 1
        
        while true {
            
            if (i != pivot){
            while change_arr[++i] < change_arr[pivot] {}
            }
            if (j != pivot){
            while change_arr[--j] > change_arr[pivot] {}
            }
            
            if (i >= j){
                break
            }
            
            
            exchange(i,j)
            
            if (pivot == i){
                pivot = j
            }else if (pivot == j){
                pivot = i
            }
            
        }//end while
        
        
        Sort(left , i-1)
        Sort(i+1 , right)
        
    }
}


func exchange (index1:Int, index2:Int){
    
    let temp = change_arr [index1]
    change_arr[index1] = change_arr[index2]
    change_arr[index2] = temp
    
    println(change_arr)
    
}
/*
func exchange<T>(data:[T], i:Int, j:Int) -> [T]
{
    var newData = data
    newData[i] = data[j]
    newData[j] = data[i]
    return newData
}
*/
Sort(0,9)

