//
//  main.swift
//  CAFP
//
//  Created by Xiangyu Ju on 10/13/15.
//  Copyright © 2015 Xiangyu Ju. All rights reserved.
//

import Foundation

//Build a calculator
//Add
func add(number1: Int?, number2: Int?) -> Int? {
    
    if number1 != nil && number2 != nil {
       
        return number1! + number2!
        
    }
    
    return nil
    
}

//Add Test
var a = 16, b = 4

print(add(a,number2: b)!)

//Subtract
func sub(number1: Int?, number2: Int?) -> Int? {
    
    if number1 != nil && number2 != nil {
        
        return number1! - number2!
        
    }
    
    return nil
    
}

//Subtract Test
print(sub(a,number2: b)!)

//Multiply
func mul(number1: Int?, number2: Int?) -> Int? {
    
    if number1 != nil && number2 != nil {
        
        return number1! * number2!
        
    }

    return nil
    
}

//Multiply Test
print(mul(a,number2: b)!)

//Divide
func div(number1: Int?, number2: Int?) -> Int? {
    
    if number1 != nil && number2 != nil {
        
        return number1! / number2!
        
    }
    
    return nil
    
}

//Divide Test
print(div(a,number2: b)!)

//Create a function that expects one of them along with two Ints
func calculator(number1: Int?, number2: Int?, operation: (Int?, Int?) -> Int?) -> Int? {
    
    return operation(number1, number2)
}

//Calculator Test
print(calculator(a,number2: b, operation: add)!)

print(calculator(a,number2: b, operation: sub)!)

print(calculator(a,number2: b, operation: mul)!)

print(calculator(a,number2: b, operation: div)!)

//Array Fun
//–create a new function for add
func arrayAdd(numbers: [Int?]) -> Int? {
    
    var result = 0
    
    for index in 0...numbers.count - 1 {
        
        if numbers[index] == nil {
            
            return nil
    
        } else {
            
            result = result + numbers[index]!
            
        }
        
    }
    
    return result
}

//Array Add Test
print(arrayAdd([2,5,9,100])!)
print(arrayAdd([2,5,nil,100]))

//–create a new function for mul
func arrayMul(numbers: [Int?]) -> Int? {
    
    var result = 1
    
    for index in 0...numbers.count - 1 {
        
        if numbers[index] == nil {
            
            return nil
            
        } else {
            
            result = result * numbers[index]!
        }
        
    }
    
    return result
}

//Array Mul Test
print(arrayMul([2,5,9,100])!)
print(arrayMul([2,nil,9,100]))

//–create a new function for count
func arrayCount(numbers: [Int?]) -> Int? {
    
    for index in 0...numbers.count - 1 {
        
        if numbers[index] == nil {
            
            return nil
            
        }
        
    }
    
    return numbers.count

}

//Array Count Test
print(arrayCount([2,5,9,100])!)
print(arrayCount([2,5,9,nil]))

//–create a new function for avg
func arrayAvg(numbers: [Int?]) -> Int? {
    
    var total = 0
    
    for index in 0...numbers.count - 1 {
        
        if numbers[index] == nil {
            
            return nil
            
        } else {
            
            total = total + numbers[index]!
        }
        
    }
    
    return total / numbers.count
}

//Array Avg Test
print(arrayAvg([2,5,9,100])!)
print(arrayAvg([nil,5,9,100]))

//Array Fun - refactor all four down to a "generic math operation" approach
func arrayCalculator(numbers: [Int?], operation: [Int?] -> Int?) -> Int? {
    
    return operation(numbers)
    
}

//arrayCalculator Test
print(arrayCalculator([2,5,9,100], operation: arrayAdd)!)

print(arrayCalculator([2,5,9,100], operation: arrayMul)!)

print(arrayCalculator([2,5,9,100], operation: arrayCount)!)

print(arrayCalculator([2,5,9,100], operation: arrayAvg)!)

//points add
func addPoint(point1: (Double, Double), point2: (Double, Double)) -> (Double, Double){
    
    return ((point1.0 + point2.0), (point1.1 + point2.1))
    
}

// points add dictionary
func addPoint(point1: Dictionary<String, Double>, point2: Dictionary<String, Double>) -> Dictionary <String, Double>{
    
    var dic = Dictionary<String, Double>()
    
    if point1["x"] == nil || point2["x"] == nil || point1["y"] == nil || point2["y"] == nil{
        
        print("Input Error")
        
    } else{
        
        dic = ["x": point1["x"]! + point2["x"]!, "y": point1["y"]! + point2["y"]!]
        
    }
    
    return dic
    
}

// test points add
print(addPoint((3.3, 200),point2: (55, 10.12)))
print(addPoint(["x": 3.3, "y": 200], point2: ["x": 55, "y": 10.12]))
print(addPoint(["x": 3.3, "y": 200], point2: ["y": 10.12]))

//points sub
func subPoint(point1:(Double,Double), point2:(Double,Double)) -> (Double, Double){
    
    return ((point1.0 - point2.0), (point1.1 - point2.1))
    
}

//points sub dictionary
func subPoint(point1: Dictionary<String, Double>, point2: Dictionary<String, Double>) -> Dictionary <String, Double>{
    
    var dic = Dictionary<String, Double>()
    
    if point1["x"] == nil || point2["x"] == nil || point1["y"] == nil || point2["y"] == nil{
        
        print("Input Error")
        
    } else{
        
        dic = ["x": point1["x"]! - point2["x"]!, "y": point1["y"]! - point2["y"]!]
        
    }
    
    return dic
    
}

// test points sub
print(subPoint((3.3, 200),point2: (55, 10.12)))
print(subPoint(["x": 3.3, "y": 200], point2: ["x": 55, "y": 10.12]))
print(subPoint(["x": 3.3], point2: ["x": 55, "y": 10.12]))






