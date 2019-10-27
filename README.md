# Functional Programming with Haskell

### Introduction
Functional programming is a programming paradigm in which we try to bind everything in pure mathematical functions style. It is a declarative type of programming style. Its main focus is on “what to solve” in contrast to an imperative style where the main focus is “how to solve”. You'll find the FP codes I did with HASKELL in this repository.

### Functional Programming is based on Lambda Calculus:
Lambda calculus is framework developed by Alonzo Church to study computations with functions. It can be called as the smallest programming language of the world. It gives the definition of what is computable. Anything that can be computed by lambda calculus is computable. It is equivalent to Turing machine in its ability to compute. It provides a theoretical framework for describing functions and their evaluation. It forms the basis of almost all current functional programming languages.

### Programs that support FP
- HASKELL
- Javascript
- Scala 
- Erlang
- Lisp
- Clojure
- Racket

### Concepts of functional programming

- Pure functions : These functions have two main properties. First, they always produce the same output for same arguments irrespective of anything else. Secondly, they have no side-effects i.e. they do modify any argument or global variables or output something.

- Recursion: There are no “for” or “while” loop in functional languages. Iteration in functional languages is implemented through recursion. Recursive functions repeatedly call themselves, until it reaches the base case.

- Referential transparency: In functional programs variables once defined do not change their value throughout the program. Functional programs do not have assignment statements. If we have to store some value, we define new variables instead. This eliminates any chances of side effects because any variable can be replaced with its actual value at any point of execution. State of any variable is constant at any instant.

- Functions are First-Class and can be Higher-Order: First-class functions are treated as first-class variable. The first class variables can be passed to functions as parameter, can be returned from functions or stored in data structures. Higher order functions are the functions that take other functions as arguments and they can also return functions.

Example : 
    show_output(f)            // function show_output is declared taking argument f 
                              // which are another function
        f();                  // calling passed function
    
    print_gfg()             // declaring another function 
        print("hello gfg");
    
    show_output(print_gfg)  // passing function in another function

- Variables are Immutable: In functional programming, we can’t modify a variable after it’s been initialized. We can create new variables – but we can’t modify existing variables, and this really helps to maintain state throughout the runtime of a program. Once we create a variable and set its value, we can have full confidence knowing that the value of that variable will never change.

**LEARNING FP WITH HASKELL**
