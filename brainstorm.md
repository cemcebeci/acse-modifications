# Implementing macro definitions
These will only implement integer constants.  
Macros can be used in place of integer constants.  
a macro can not be modified by an assignment.

## Syntax
define FOO 42  
define BAR 56

## Places I've checked.
- how do integer constants get handled? There should be a token with the correct semantic value.
  - The NUMBER token has the correct semantic value and matches integer constants.
- same question for identifiers.
  - The IDENTIFIER literal matches this.

## Plans
### Entirely in the lexer
Identifying macros in the lexer (binding the ID to the number) may not be easy.  
The lexer may have a hard time telling macro identifiers from variable identifiers.  
How would the parser do this though?  


### In the parser
It's very easy to identify a macro definition and relate the identifier to a macro.
- are identifiers turned into register expressions in the parser? If so, I could try to turn macros into immediate expressions.  
***
use a global c array macros?
something like 

struct macro *macros = ;

struct macro {
    char *ID;
    int val;
};  
***

<macro-definition> := DEFINE ID 