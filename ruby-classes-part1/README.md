[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly)

# Ruby - Classes Part1

## Objectives

- Work with Ruby classes
- Use getter and setter methods in Ruby
- Demonstrate how to implement OOP techniques such as inheritance and polymorphism

## OOP

One of the defining attributes of the Ruby programming language, in addition to readability, is how it implements object-oriented programming (OOP) techniques.
OOP facilitates writing code in a way that allows you to think about, and model, the concepts that you are working with in your program.

# Framing (5 min / 0:10)

The earliest computer programs were written in an imperative style. The programs
were a series of instructions that changed a program's state. Data was loaded
into the computer, the program ran and manipulated the data, and some output was
produced. The first JavaScript programs we wrote followed this imperative style.

The way that we sometimes think about programming follows this imperative style.
Have you ever heard of the example of writing a program for a computer to make a
peanut-butter and jelly sandwich? Part of Harvard's intro to computer science
class is having students write a program to tell a computer to make a
peanut-butter and jelly sandwich.

![Harvard CS 50 PB & J](https://i.ytimg.com/vi/YB62fSOX-PA/maxresdefault.jpg)

The message is two part: programming is communicating instructions to a computer
and these instructions should follow the format of a recipe. That
programming-as-a-recipe style of thinking is imperative programming and it's
wrong. That's not what we want to do. We don't have time for that.

Large applications written in an imperative style become confusing to build and
maintain. To consider the current state of our application, we need to consider
all of code that has run so far. That becomes increasingly difficult as the
application grows.

> [Good article explaining the difference between imperative and declarative programming](https://tylermcginnis.com/imperative-vs-declarative-programming/)

## What is Object Oriented Programming (10 min / 0:20)

Object oriented programming is a paradigm of Software Engineering that attempts
to solve the problems of building applications imperatively by organizing
applications into discrete units, called objects. Rather than imperatively
describe everything we want our application to do, in OOP we define objects that
represent our understanding of the different parts of our application, what
information describes those parts and what behavior those parts have.

![](https://simplesnippets.tech/wp-content/uploads/2018/03/java-introduction-to-Object-Oriented-Programming.jpg)

> Source:
> [Simple Snippets](https://simplesnippets.tech/java-introduction-to-object-oriented-programming-oop/)

Every object stores and manages any state or data relevant to itself internally.
We almost always have many instances of a type of object.

We use methods to initialize, modify, or act on an objects' internal state.

Because these methods will be the same across all instances of a type of object,
we define a **single class** with all of this behavior described in one place.

We then use that class to instantiate as many instances (objects) of the class
as we need.

Object oriented programming gives use three major benefits:

- **Encapsulation**: The complexity of our objects is hidden and a user can
  interact with a well defined set of methods. We can redefine internal behavior
  without changing anything externally - a huge benefit for refactoring.
- **Modularity**: Because the interface (set of methods) for an object is well
  defined, it is easy to exchange one object for another and reorganize objects
  without breaking them.
- **Inheritance**: Object Oriented design lets certain classes inherit from, or
  borrow the behavior of another, more general class. The inheriting class can
  add and overwrite inherited methods.

You can think of an object as a little machine: it has displays you can read and
buttons you can push. When you write an object-oriented application, you are
modeling the entire program as the interactions of these machines.

## Object

In object-oriented programming, the fundamental unit is the object. An object is an entity that serves as a container for data and also controls access to the data. Associated with an object is a set of attributes, which are essentially no more than variables belonging to the object. Also associated with an object is a set of functions that provide an interface to the functionality of the object, called methods.

## Classes

Classes are the foundation of object-oriented programming (OOP). Since everything in Ruby is an object, even a basic Hello, World! example makes use of OOP.
In other words, classes are abstract templates for objects. You can also say that objects are instances of classes.
Classes contain the template for a set of behaviors (such as methods) and data (such as variables).

<p align="center">
    <img src="images/classes1-img1.jpg" width="400">
    <br>
    <b>Class is a blue print</b>
</p>

Let's imagine that you're building a house. One of the first tasks you'd most likely do is build a blueprint for the house. This blueprint would contain attributes and features of the house, such as these:

- The dimensions for each room
- How the plumbing will flow
- Essentially, every attribute/feature of the house

Now let me ask a dumb question. Is the blueprint of the house the actual house? No, it simply lists out the attributes and design elements for how the home will be created.

## Instance

So after the blueprint is completed, the actual home can be built. Dare I say that the home can be instantiated?

<p align="center">
    <img src="images/classes1-img2.jpg" width="300">
    <br>
    <b>Instance of a class</b>
</p>

<p align="center">
    <img src="images/classes1-img3.jpg" width="300">
    <br>
    <b>Another instance of a class</b>
</p>

## Instance methods

Instance methods are methods that are available on a specific instance or object of a class. Instances have states that are held in instance variables. As you would expect, instance methods have access to these instance variables.

## Creating a class

Here is an example of how we can create a House class to do this:

```ruby
class House
  
end
```

## Creating methods

Here we've created the base template for a house by using the class keyword and have given it the name `House`.
Based on what we've learned so far, we can tell right off the bat that we have a `House` class with the following methods: `set_address`, `open_door`, and `close_door`.

```ruby
class House
  def set_address
    p "setting address"
  end

  def open_doors
    p "open door"
  end

  def close_door
    p "close door"
  end
end
```

## Instantiation of an object

So after the blueprint is completed, the actual home can be built. Dare I say that the home can be **instantiated**?

```ruby
class House
  def set_address
    p "setting address"
  end

  def open_doors
    p "open door"
  end

  def close_door
    p "close door"
  end
end

my_house = House.new
your_house = House.new

my_house.open_doors
your_house.close_door
```

<p align="center">
    <img src="images/classes1-img4.png" width="700">
    <br>
    <b>Under the hood of our House class</b>
</p>

## Instance variables

As the name suggests, instance variables are available to a particular instance. There is a specific syntax to set instance variables, you need to use the `@` sign to define a variable.

A local variable that is defined inside one method, for example, cannot be accessed by another method. In order to get around this limitation, we can use instance variables inside our Ruby classes.

An instance variable is a variable that is accessible in any instance method in a particular instance of a class.

```ruby
class House
  # instance variables; unique data for each object: casey and suresh
  @this_owner_name = ''
  @this_address = ''

  def set_address(address)
    @this_address = address
  end

  def set_owner(owner)
    @this_owner = owner
  end

  def get_owner
    @this_owner
  end

  def get_address
    @this_address
  end
end

casey_house = House.new
casey_house.set_address("111, New York, NY")

suresh_house = House.new
suresh_house.set_address("444, New York, NY")

p casey_house.get_address
p suresh_house.get_address
```

## Constructors

In most object-oriented languages, there is a method that’s automatically invoked when an object of that class is created.
Other languages call such methods **constructors**, but Ruby also calls them initializers because they always have the name initialize. (In Java and C++, a constructor is a method with the same name as the class name.)

```ruby
class ClassName
  def initialize
    # do something
  end
end
```

This `initialize` method will automatically be invoked when an object of that class type is created using `ClassName.new`. Normally the initialize method is used to assign values to the class’ main attributes, in which case it’s written to accept arguments:

# Variable Scope in Ruby

## Local Variables

A local variable has a local scope or context. If defined within a method, for example, its scope is kept within that method. Local variable names must begin with either a lowercase letter or an underscore (_), and must not be prefixed with `@`, `@@`, or `$` because they are reserved for other types of variables. Following are a few examples of local variables:

```ruby
x = 1.0    # x is a Float
y = "Yes"  # y is a String
_temp = 16 # _temp is a Integer
```

## Instance Variables

An instance variable belongs to a particular instance of a class, hence the name. It can only be accessed from outside that instance via an accessor (helper) method. Instance variables are always prefixed with a single at sign (`@`), as in `@hello`.

## Class Variables

A class variable is shared among all instances of a class. Only one copy of a class variable exists for a given class. It is prefixed by two at signs (`@@`), such as `@@times`. You have to initialize (declare a value for) a class variable before you use it.

## Global Variables

Global variables are globally available to a program, inside any structure. Their scope is the whole program. They are prefixed by a dollar sign (`$`), such as `$amount`.

## Constants

Constant names must begin with a capital letter (Suresh) and by convention frequently use all capitals (SURESH), making them easy to spot. Class names, for example, are constants. As their name suggests, constants are not expected to have their values changed after initial assignment. You can reassign a value to a constant, but Ruby will generate a warning if you do. Second, and more importantly, since constants refer to objects, the contents of the object to which the constant refers might change without Ruby generating a warning. Thus, Ruby constants are called mutable because although a constant is only expected to refer to a single object throughout the program, the value of that object may vary. Finally, constants must have a value assigned to them to exist.

## Parallel Variable Assignment

With parallel assignment, you can assign several values to several variables in a single expression, based on order. A list of variables, separated by commas, can be placed to the left of the equals sign, with the list of values to assign them on the right. Here are a few examples:

```ruby
name, grade, gpa = 'Suresh', 89, 3.6
a, b, c = "cash", 1.99, 100
```

## Questions?

<p>
<img src="https://media.giphy.com/media/26xBI73gWquCBBCDe/giphy.gif">
</p>
