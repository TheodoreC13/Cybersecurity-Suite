Basic definitions:

Imperative Programming - Programs describe "How it is to be done." - Variables can be mutable. Context Dependant. Use statements to change a program's state. Gives developers full control, very important for low level languages.

Declarative Programming - Programs describe "What it is to be done." - Variables are ummutable. Context Independant. Use statements to describe a program's desired result. Many Declaritive APIs have underlying Imperative implementation. Good for managing complexity.

Functional Programming - Declarative programming paradigm style where one applies pure functions in sequence to solve complex problems

Object Oriented Programming - Implementation of state and behavior together. Polymorphism; a single symbol can represent multiple types.

Procedural Programming - State and Behavior are implemented seperately, State in data structures and behavior in functions. 

Generic Typing - Generics means parameterized types. The idea is to allow type (Integer, String, … etc., and user-defined types) to be a parameter to methods, classes, and interfaces. Using Generics, it is possible to create classes that work with different data types. An entity such as class, interface, or method that operates on a parameterized type is a generic entity.

Reflective Programming - The ability of a process to examine, introspect, and modify its own structure and behavior.

Standardized Languages - Technical Standards for the language exist.

| Language | Purpose | Imperative | Object Oriented | Functional | Procedural | Generic | Reflective | Standardized | Other paradigms |
|----------|---------|------------|-----------------|------------|------------|---------|------------|--------------|-----------------|
| Assembly | general | yes | no | no | no | no | no | yes | Highly specific |
| Bash | Shell, Scripting | yes | no | no | yes | no | no | optional | no |
| C | | yes | no | no | yes | no | no | yes | n\a |
| C++ | | yes | yes | yes | yes | yes | no | yes | n\a |
| C# | | yes | yes | yes | yes | yes | yes | yes | Structured, Concurrent |
| COBOL | | yes | yes | no | yes | no | no | yes | n\a |
| Go |  | yes | maybe | no | yes | yes | yes | sorta | concurrent |
| Haskel |  | no | no | yes | no | yes | no | yes | Lazy Evaluation |
| Java |  | yes | yes | yes | yes | yes | yes | sorta | concurrent |
| Javascript |  | Yes | yes | yes | yes | no | yes | yes | prototype based |
| Perl |  | yes | yes | yes | yes | yes | yes | no | n\a |
| PHP |  | yes | yes | yes | yes | no | yes | sorta | n\a |
| Powershell |   | Yes | yes | yes | yes | no | yes | no | pipeline |
| Python |  | yes | yes | yes | yes | yes | yes | sorta | aspect oriented |
| R |  | yes | yes | yes | yes | no | yes | no | n\a |
| Ruby |  | yes | yes | yes | no | no | yes | yes | aspect oriented |
| Rust |  | yes | yes | yes | yes | yes | no | no | concurrent |
| Visual Basic |  | yes | yes | no | yes | yes | no | no | Component Oriented |
| Visual Basic .NET |  | yes | yes | yes | yes | yes | yes | no | Structured, Concurrent |

Assembly: Basic computer language. Very fast. 

Java: High level language. Built in Garbage Collector for memory / objects. More Secure than C because it doesn't have pointers. Multithreading. Platform Independant. "write once, run anywhere" Vast Standard Library. Strongly Typed. Robust Exception Handling. Java can be slower than other languages due to the JVM(Java virtual machine) and automatic memory management.This automatic memory management can also lead to more memory being used. 

C: Middle level language that allows direct manipulation of computer hardware. Fast, Efficient, general purpose. Staticly typed, imperative language. Allows bitwise operations. Data and functions are seperate as C is a procedural language. Does not support information hiding. Does not allow user defined types. Does not support function / operator overloading. Functions are not defined inside structures. Does not use namespace. No strict type checking. Does not support direct exception handling. Focuses on the method/process not data. Virtual /  Friend functions are not supported. Refereence variables are NOT supported.

C++: High level language. Case sensative. Faster than java or python. Dynamic memory allocation / memory management. C++ does not handle multithreading, relies on OS to supply the feature. Supports Polymorphism, Encapsulation, and inheritance because it's an OOPL. Mostly a superset of C. Data and functions are encapsulated together in the form of an object. Data hidden by encapsulation. Allows user-defined types. Does support function / opperator overloading. Functions can be used inside structures. Namespace is used to avoid name collisions. Strict type checking. C++ structures have access modifiers. Supports direct exception handling. Focuses on the data not  the method or process. Virtual /  Friend functions are supported. Reference variables are supported.

Python: High level languages, very easy, very popular. GUI programming support. Easy to debug. Portable, integrated language. Interpreted langugage. Large std library. Dynamically typed. Dynamic memory allocation. Ideal for prototyping. Can be slower than C or Java. Global Interpreter Lock. Memory intensive. Large number of packaging / versioning which can lead to conflicts. Lack of strictness can be make code difficult to read and maintain. 

C#: Like Java, but better in some ways (value types, reifiable generics) and worse in others (lock-in to an annoying and expensive ecosystem). Ecosystem lockin issues?

COBAL: Our entire financial sector runs on this. Archaic.

JavaScript: The assembly language of the web. Like assembly language, you probably ought to avoid writing it by hand most of the time, but unlike assembly language, you often can’t. It has some serious design flaws—chief among them, conflating tables and namespaces—but it’s getting better. And at least it gets lambda semi-right.

PHP: Disgusting, with no redeeming qualities.

Visual Basic: At this point, C# in BASIC clothing. Enough said.

Perl: My second love, an arcane artifact of the ’90s. Still good for one-liners when AWK won’t cut it, but probably shouldn’t be used for new programs longer than that.

Delphi: Old, not quite dead. Seldomly used.

Ruby: A gem of a language, the true successor to Smalltalk. It has a coherent design that makes it pleasant to use, but it still suffers from table disease, and it tends to be unreasonably slow.

Transact: I don’t know this one, probably because I’m not a DBA.

R: The best statistics language, which unfortunately isn’t saying much. It’s one of the languages that people do great things with despite its designers’ best attempts to stand in their way.


Objective-C: Its memory management is so difficult that many programmers don’t even try, assuming instead that you can just restart your iPhone apps when they run out of memory and crash. So long as Apple said so, its benefit was being able to write native iOS apps, but perhaps it should be supplanted by Swift as soon as possible.

To look into later:
Lua
https://www.geeksforgeeks.org/namespace-in-c/
https://www.geeksforgeeks.org/virtual-function-cpp/
https://www.geeksforgeeks.org/friend-class-function-cpp/

Noted for being important in Cybersec: C++, Python, Bash/Shell, Powershell, Javascript, Perl, Ruby, Rust, SQL, PHP.

