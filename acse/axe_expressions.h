/*
 * Andrea Di Biagio
 * Politecnico di Milano, 2007
 * 
 * axe_expressions.h
 * Formal Languages & Compilers Machine, 2007/2008
 * 
 * Support functions for t_axe_expressions.
 */

#ifndef _AXE_EXPRESSIONS_H
#define _AXE_EXPRESSIONS_H

#include "axe_engine.h"

/* This function generats instructions for binary numeric
 * operations.  It takes as input two expressions and a binary
 * operation identifier, and it returns a new expression that
 * represents the result of the specified binary operation
 * applied to `exp1' and `exp2'.
 * If the two expressions are both IMMEDIATE, no instructions are generated
 * and an IMMEDIATE expression is returned.
 *
 * Valid values for `binop' are:
 * ADD 
 * ANDB
 * ANDL
 * ORB 
 * ORL 
 * EORB
 * EORL
 * SUB 
 * MUL 
 * SHL 
 * SHR 
 * DIV  */
extern t_axe_expression handle_bin_numeric_op(t_program_infos *program,
      t_axe_expression exp1, t_axe_expression exp2, int binop);

/* This function generates instructions that perform a
 * comparison between two values.  It takes as input two
 * expressions and a binary comparison identifier, and it
 * returns a new expression that represents the result of the
 * specified binary comparison between `exp1' and `exp2'.
 * If the two expressions are both IMMEDIATE, no instructions are generated
 * and an IMMEDIATE expression is returned.
 *
 * Valid values for `condition' are:
 * _LT_     (used to test if the value of `exp1' is less than
 *           the value of `exp2')
 * _GT_     (used to test if the value of `exp1' is greater than
 *           the value of `exp2')
 * _EQ_     (used to test if the value of `exp1' is equal to
 *           the value of `exp2')
 * _NOTEQ_  (used to test if the value of `exp1' is not equal to
 *           the value of `exp2')
 * _LTEQ_   (used to test if the value of `exp1' is less than
 *           or equal to the value of `exp2')
 * _GTEQ_   (used to test if the value of `exp1' is greater than
 *           the value of `exp2')  */
extern t_axe_expression handle_binary_comparison(t_program_infos *program,
      t_axe_expression exp1, t_axe_expression exp2, int condition);

#endif
