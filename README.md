# Tutorial on CMake functions and macros

Much like any other programming language, cmake also provides some facilities for code reuse. Functions and macros in CMake 
provides users with a way of encapsulating the code repetition. It gives users the possibility to create reusable blocks
of CMake code and later use them like a built-in CMake commands.

## The Basic on functions and macros


### Scopes

## Using keyword arguments

## Overriding commands

## Best Practices
* Prefer functions over macros. Since functions create their own scope, they better isolate the effects of the function in the calling scope. Use macros when you really need the effects of the macro in the scope of the caller.

* Use keyword-based argument handling, except for the very basic funtions. This provides better usability.

* Place all the functions and macro in a separate file, rather then scattering them throughout the source tree. Place them in a separate directory under the top level of the project, and use *.cmake extension. This way they can use to call include().

