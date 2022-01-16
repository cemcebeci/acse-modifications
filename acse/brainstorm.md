# Implementing forall
- I need a `forall` token, a `to` token and a `downto` token.
- I need two new semantic rules, one for the `to` version and one for the `downto` version.
- These loops do not (and can not) declare new variables, which means I can just use the assignment rule to 
  manipulate the induction variable.
- It must allow nesting:
> no global variables