# Implicit variable
We have a new type of statement, just an expression.  
When this statement is executed, a variable called $implicit is assigned the value of that expression.  

Should $implicit be a new token? I don't think so, especially if identifiers can start with a $. They can't though.

We could either
- define the new token $implicit and add the rule `| IMPLICIT` to <exp>
- add $implicit to the regexp of identifier and handle it separately.
  - this would make $implicit assignable to. I don't think we want that

> $implicit needs to be a new token  
> $implicit needs to be interpreted as an expression on its own.
> the parser needs to initialize $implicit as a register

We could either implement it as a variable(in acse) or implement it as a global variable in C.  
I think the first one requires some tinkering.  Because I saw something called set_new_variables in <var_declaration>.

I'll do the second one.
> the parser needs to emit code to assign to the implicit register when a fitting statement is found.
