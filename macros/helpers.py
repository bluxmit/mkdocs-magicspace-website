"""
Basic example of a Mkdocs-macros module.
Include this  {{ macros_info() }} in any page to get complete macro info
"""
import os

def define_env(env):
    """
    This is the hook for defining variables, macros and filters
    - variables: the dictionary that contains the environment variables
    - macro: a decorator function, to declare a macro.
    - filter: a function with one of more arguments,
        used to perform a transformation
    """
    @env.macro
    def get_env_var(env):
        try:
            return os.environ[env]
        except:
            return None 