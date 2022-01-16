# Implementing modulo
Modulo is just another arithmetic operator.
I need to define the token.  
I need to write the grammar rule (trivial).  
I need to write a method for handling expressions with this operator.  
    This method needs to implement modulo with the existing ISA.
The handle_arith_op method is probably a good place to add this.
On second thought, I'll need to handle all four cases (operands being immediates.)
    Perhaps using the given arithmethic operations could be easier.