# Module 2: "The computer doesn’t speak English (French, Mandarain, German, Spanish...)" or Introduction to writing code  

## Terms and Definitions For the Basics of Programming

Before we dive into our first program we will write, it is important to get a few terms defined. 

### Syntax:
Just as a spoken lanugage has syntax, so does a computer programming language. The rules are just as strict for communicating properly. I cannot stress this highly enought, a computer can only understand machine code (a topic for later.) But a short description for now is that a computer can, using a program called a compiler (or other similar concepts) turn the text of a program written in a programming language and convert it to machine code. **If any of the code does not conform to the rules of the programming language that process will fail and you will not be able to run your code.**  At the end of the module there are examples of the programs that won't work because of "syntax errors". 

### Types:
The world of computing is centered around modeling processes or ideas from the real world (and abstract concepts from our imaginations). Speaking generally (and also in the language of object-oriented programming) there are "Classes" of things. For example if we look at the following list of concepts / ideas, which would be grouped together? 

- False
- The word boggle 
- The number 3
- The letter a 
- The number 6.62607004×10^34
- The number pi 
- The latitude and longitude of a location 
- A person's first name, last name, and their day of the month they were born on
- A list of the scores a student recieved on their exams for a semester. 

The correct grouping are as follows: 
- The letter a is a character, the word boggle is a list of characters. A list of characters is often called a string. 
- The numbers are all numbers, there are two main ways of representing numbers that matter right away in programming. There are integers, i.e. whole numbers (e.g. ... -1, 0, 1, ... ) and non-whole numbers, numbers with fractional integer values (e.g. 101.132). (Irational and complex numbers are a topic for later.) In most languages the integers are call integers (often abbreviated int) and the non-whole numbers are called floating point numbers (i.e. the decimal place can move around in the number.) There are different types of these numbers depending how big of a number is allowed to be represented by the type (more on this later.) 
- False, this is what is called a boolean, there are two differnet possible values false (represented in the computer as a 0) and true (represented in the computer as a 1). Boolean values and boolean logic are incredibly important in controlling the flow of your programming "condidionally" (e.g. depending on the values passed to the program)  
- Another grouping would be the list of scores and the word boggle, as they are both lists of a given type, one numbers the other characters. 
- Another grouping would be the person's information and the latitude and longitude of a location. These are themselves groupings of multiple different properties represented by simple types (strings for the names and a numbers for the day and the lat/long). These are often called composite types or classes. (Specific instances are usually called objects) 

A more succinct list: 
- Boolean (True, False)
- Int (Whole Numbers)
- Float (Fractional Numbers)
- Character (A single character (letter, number, symbol))
- String (A list of characters)
- List (A collection of other types)
- Composite Type or Class (a collection of properties grouped together) 
  
Part of this module is getting familiarity with how to use types in specific languages. If it isn't clear yet worry not. 

### Input output

Input output (or IO) is the concept of getting data into and out of the program. The first type you will be exposed to (in our first example) is reading to and writing from the console. It is also used for writing to and reading from a file. 

### Comments
Most programming languages allow you to specify areas of the code that you want the computer to ignore. This is where you can document and annotate the code. Some common ways of expressing this are the symbols: 
- // 
  - This kind of comment will allow the computer to ignore everything on the line after the double slash
- \#
  - same as above but after the pound
- /*  */  
  - everything in between the /*  */ will be ignore, this can span multiple lines

We will be using these extensively in these tutorials to describe what is happening. [Best practices for comments later](Link)


### Namespace  

A namespace is way of organizing and referring to different sets of related code. Namespaces also can have sub-namespaces. Using clear and consistent namespace structure will help you and others use and navigate your code. 

### Functions and Parameters 

Just like we discussed in the previous module with math or excel you can define functions in your program. These functions take in certain parameters (also sometimes called arguments) and do something with them. 

One important function to know about in many programs is the "main" function. This is the entry point into the program, this function is called by an external user of the program or by the framework you are using to start your code. It doesn't always have to be called main, but by default many programming languages work "out of the box" with no configuration if you use the name "main"

You will see several examples of main function below. 

A function can end in one of three ways, it can return some value or values, or it can return nothing (usually called void), and it return an error (often called an exception). 

## Pseudocode

Pseudocode is example code written to communicate the ideas of an algorithm or piece of code not written in the exact syntax of a language. This is not something that could be executed on a computer, it is intended for human reading. 

In this tutorial, if the code is not specified to be a specific language, it can assumed to be c style pseudocode (likely close to c# as it is my preferred general purpose language). 

## A final thought before diving into real code
Before you sit down to write code, from the first time you program until your very last day you should always start with what you want to happen then move on to the specifics of how to make it happen in code. 

This is especially important in the beginning because if you get bogged down in the how (syntax, types, languages, errors, etc) you will confuse and frustrate yourself before you ever get started. 

Also as stated in the introduction, one of the key elements of Computational Thinking was **Decomposition**. Break down the problem into the small manageable pieces and solve them individually. Then build those pieces into the large whole of the problem. Learn to add and divide before you learn how to calculated the average. Learn to write one number to a file before thinking through how to write your entire output file. Learn to read the first line of a file before learning to parse the file to find the text you want. 

## Hello World
There is a time honored tradition in the instruction of programming. The first program one is taught code is almost always the same. The program is called ["Hello World."](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program#History) We will continue this tradition.  

We will start with C as many languages have been influenced by it. 

### C
```C
#include <stdio.h>        //include the standard io library 

int main(void)            // define the main function (void) means the function takes no parameters 
{                         // begin the code for the  main function
  printf("Hello World!"); // use the printf function from the standard io library to print the string Hello World! to the output 
}                         // end the main function
```

### C++
Similarly 
```C
#include <iostream>                         //include the library io stream

int main()                                  // define the main function () means the function takes no parameters 
{                                           // begin the code for the  main function
  std::cout << "Hello World!" << std::endl; // use cout function from std to print the string Hello World! to the output and then endl to print an end line 
}                                           // end the main function
```
### C#
Close but still slightly different 
```C#
using System;                         //include the library io stream
class App                             //define the class App
{                                     //start the code for class App   
  public static void Main()           //define the function Main, static can be called without instantiating the class, void returns nothing
  {                                   //start the main function
    Console.WriteLine("Hello World!");// use Console.WriteLine from System namespace to print Hello World! to output  
  }                                   // end the Main function
}                                     // end the App Class code 
```

### Python
```python
print("Hello World!")
```

Python is different, it is a "scripting language" a python file can run independently, the interpreter will just run whatever is in the file. 
### Julia
Julia is similar 

```julia 
println("Hello World!")
```

### Comparison
All of these accomplished the same thing, but the syntax, necessary code, and functions.  

## Exercise 1 
1) Type out the above snippets and run them on your computer. (1 or 2 will do don't need to do all of them)
2) Change the string to print something else.   

## Variables
Specific values 

## Arithmetic  
 
In most programming languages the way to do basic mathematical operations is what you would expect: 

```
int theNumberTwo = 1 + 1 
int twoMinusOne = 2 - 1 
float fourDividedByTwo = 4.0 / 2.0 
float twoTimesThree = 2.0*3.0
```
the variable theNumberTwo would equal 2
the variable twoMinusOne would equal 1 
the variable twoMinusOne would equal 2.0 
the variable twoTimesThree would equal 6 

And you can group with parenthesis as you would expect. 
```
float twoTimesThree = 2.0*3
```

However there are sometimes some unintuitive concepts as well 

### Integer Division 
```
int quotient = 13 / 2; 
return a;
```

The value returned by of this function is (Drum roll) 6. Because integers cannot contain non-whole numbers the remainder is thrown out. To get the remainder 

### Integer Division Remainder 
```
int remainder = 13 % 2; 
return a;
```
The value returned is 1. 13/2 gives 6 with a remainder of 1. Two goes into 13, 6 times with a remainder of 1. 


### Float Division by an integer
```
int quotient = 13.0 / 2; 
return a;
```
This function would return 6.5 as you would expect for a number. When doing arithmetic with floating point numbers and integers, the result will be a float (by default in most languages). 

Confusingly some languages treat numbers differently, always assuming they are floating points when doing division, and only do integer division with a different operator. 

Python
```python
quotient = 13 / 2 
integerQuotient = 13 // 2
remainder = 13 % 2 
```

The result is: 
- quotient = 6.5 
- integerQuotient = 6
- remainder = 1

**Be careful when dividing, know the correct syntax for the type of division you are doing in the language you are doing it**
### Number to a power 
Take the number (1.01*10)^3

Performing this operation is done differently depending on the language 

Some examples

C
```C
#include <math.h> // include the math library which contains math helper functions

int float main() {
  float base = 1.01*10;
  float exp = 3.0;
  return = pow(base, exp);
}
```
The result is what you would expect 1010.0

Python
```python
value = 1.01*10**3
```

Note: 
The ^ operator in most languages does a "XOR" between the bits in the binary representation of 10 and 3. [More details here, not relevant to our discussion](https://en.wikipedia.org/wiki/Bitwise_operations_in_C)

### Order Of  Operations 
The order of operations is just like you were taught for paper and pencil math: 
PEMDAS
Parenthesis, Exponents, Multiplication, Division, Addition, Subtraction. 
Additionally the operations are done from left to right 

C#
```c#
using System;
					
public class Program
{
	public static void Main()
	{
		double ourValue = 15 * 6 * (2 - 4) / 2.0 - Math.Pow(3,2); 
		Console.WriteLine(ourValue);
		double moreClear = ((( (15 * 6)*(2 - 4))) / 2.0) - Math.Pow(3,2); //a lot of extra parenthesis 
		Console.WriteLine(moreClear);
	}
}
```
result : 
-99
-99

## Exercise
- Run the above on your computer 
- Change a parenthesis or the order of the various terms and get 25.7142857142857

<details>
  <summary>Answer</summary>

  ```C#
using System;
					
public class Program
{
	public static void Main()
	{
		double other =  (15 * 6)*(2 - 4) / (2.0  - Math.Pow(3,2)); 
		Console.WriteLine(other);
	}
}  
```  
</details>

