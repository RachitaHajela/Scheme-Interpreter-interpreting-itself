# Scheme-Interpreter-interpreting-itself
a scheme interpreter (in scheme) which can interpret itself

The interpreter supports the following features of Scheme: define (including the special syntax for defining functions conveniently), lambda, if, cond, let, letrec, let*, and quote.

Since your interpreter will need to have a library of functions, such as append, map, and assoc, that are not primitive functions, you should create a file called library.scm into which you type the definitions of append, map, assoc, etc. That is, the library should contain the definitions of all the functions that your interpreter calls but which are not in *global-env*.

As a final test of your interpreter, the interpreter interprets itself. For example, here might be a session involving the interpreter interpreting itself interpreting the definition and use of the factorial function:



> (load "interpreter.scm")     ;loading your interpreter into Scheme system                     
> (repl)                         ;invoking your interpreter, note the change in prompt
--> (load "library.scm")         ;load the library file
--> (load "interpreter.scm")      ;loading your intrepreter into your interpreter
--> (repl)                          ; invoking your 2nd interpreter
--> (define (fac x) (if (= x 0) 1 (* x (fac (- x 1)))))  ;defining factorial
--> (fac 4)                                              ;calling factorial
--> 24
--> (exit)                          ; exiting 2nd interpreter
--> (exit)                          ; exiting 1st interpreter
>                                ; back in scheme system
