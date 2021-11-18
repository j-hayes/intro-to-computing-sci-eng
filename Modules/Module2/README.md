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

A more susinct list: 
- Boolean (True, False)
- Int (Whole Numbers)
- Float (Fractional Numbers)
- Character (A signle character (letter, number, symbol))
- String (A list of characters)
- List (A collection of other types)
- Composite Type or Class (a collection of properties grouped together) 
  
Part of this module is getting familiarity with how to use types in specific languages. If it isn't clear yet worry not. 

### Input output

Input output (or IO) is the concept of getting data into and out of the program. The first type you will be exposed to (in our first example) is reading to and writing from the console. It is also used for writinging to and reading from a file. 

### Comments
Most programming languages allow you to specify areas of the code that you want the computer to ignore. This is where you can document and annotate the code. Some common ways of expressing this are the symbols: 
- // 
  - This kind of comment will allow the computer to ignore everything on the line after the double slash
- \#
  - same as above but after the pound
- /*  */  
  - everything in between the /*  */ will be ignore, this can span multiple lines

We will be using these extensively in these tutorials to describe what is happenning. [Best practices for comments later](Link)

### Functions and Parameters 

Just like we discussed in the previous module with math or excel you can define functions in your program. These functions take in certain parameters (also sometimes called arguments) and do something with them. 

One important function to know about in many programs is the "main" function. This is the entry point into the program, this function is called by an external user of the program or by the framework you are using to start your code. It doesn't always have to be called main, but by default many programming languages work "out of the box" with no configuration if you use the name "main"

You will see several examples of main function below. 


### Namespace  

A namespace is way of organizing and refering to differnt sets of code. 

## Hello World
There is a time honored tradition in the instruction of programming. The first program one is taught code is almost always the same. The program is called ["Hello World."](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program#History) We will continue this tradition.  

We will start with C as many languages have been influenced by it. 

### C
```C
#include <stdio.h> //include the standard io library 

int main(void)            // define the main function (void) means the function takes no parameters 
{                         // begin the code for the  main function
  printf("Hello World!"); //use the printf function frpm the standard io library to print the string Hello World! to the output 
}                         // end the main function
```

### C++
```C
#include <iostream>

int main() 
{
  std::cout << "Hello World!" << std::endl;
}
```
### C#
```C#
using System;
class App
{
  static void Main()
  {
    Console.WriteLine("Hello World!");
  }
}
```

### Python
```python
print("Hello World!")
```

### Julia
```julia 
println("Hello World!")
```


## Arithmetic  
 
In most programming languages the way to do basic mathematical operations is what you would expect: 

```
int theNumberTwo = 1 + 1 
int twoMinusOne = 2 - 1 
float fourDividedByTwo = 4.0 / 2.0 
float twoTimesThree = 2*3
```
the variable theNumberTwo would equal 2
the variable twoMinusOne would equal 1 
the variable twoMinusOne would equal 2.0 
the variable twoTimesThree would equal 6 

However there are sometimes some unintuative 


