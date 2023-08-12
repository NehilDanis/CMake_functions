cmake_minimum_required(VERSION 3.23)

project(learn_cmake_functions)

# included all the functions and macros
include(utils/reusable_code.cmake)


######################################
#  Basics on functions and macros    #
######################################
basic_fn("hello" "world") # valid
BASIC_FN("HELLO" "WORLD") # valid 
Basic_Fn("Hello" "World") # valid


######################################
#             Scopes                 #
######################################

set(foo "hello")
check_scope(${foo})
message("Value of foo after calling check_scope ${foo}")


set(foo "hello")
check_scope_macro(${foo})
message("Value of foo after calling check_scope_macro ${foo}")

######################################
#       Using keyword arguments      #
######################################