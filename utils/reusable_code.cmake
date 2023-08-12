function(basic_fn foo bar)
    message("basic_fn ${foo} ${bar}")
endfunction()

# function creates it is own scope and the foo variable gets updated in the 
# scope of the function, but not in the outer scope(parent scope)

# to have the same behavior as macro, set can be used with PARENT_SCOPE
# parameter. This way the actual foo variable will only be updated in the 
# parent scope and ${foo} will only represent a string replacement of the 
# argument passed into the function
function(check_scope foo)
    # update the foo 
    set(foo "goodbye")
    # set(foo "goodbye" PARENT_SCOPE) 
    message("value of foo in the scope of check_scope ${foo}")
endfunction()

# macro does not have it is own scope.
# macro directly updates the variable in the parent scope. 
# Passing a parameter to macro is the ${foo} will only be
# the string replacement of the parameter used when calling 
# the macro
macro(check_scope_macro foo)
    # update the foo 
    set(foo "goodbye!")
    message("value of foo in the scope of check_scope_macro ${foo}")
endmacro()