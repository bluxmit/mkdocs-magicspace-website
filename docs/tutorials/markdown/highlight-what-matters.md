## Blockquotes
Blockquotes can be created by using symbol ```>``` at the start of the line. For example the following markdown  

```
> In order to understand recursion, one must first understand recursion.
```
outputs :point_down:

> In order to understand recursion, one must first understand recursion.

Of course, you can write multiple lines in the blockquote

!!! example "Multiline Blockquote - option 1"
    === "Output"
        > Measuring programming progress by lines of code is like measuring aircraft building progress by weight    
        > **Bill Gates (co-founder of Microsoft)**

    === "Markdown"
        ````
        > Measuring programming progress by lines of code is like measuring aircraft building progress by weight    
        > **Bill Gates (co-founder of Microsoft)**
        ````

Starting every new line with ```>``` can be cumbersome, especially if you need to make line breaks

!!! example "Multiline Blockquote option 2"
    === "Output"
        > ```
          If Internet Explorer is brave enough to ask to be your default browser, 
          you should be brave enough to ask that girl out.
          ```
    === "Markdown"
        ````
        > ```
          If Internet Explorer is brave enough to ask to be your default browser, 
          you should be brave enough to ask that girl out.
          ```
        ````

## Admonitions
[Admonition](https://python-markdown.github.io/extensions/admonition/) is an extension to Markdown that looks shiny and attractive.

Admonitions are created with the following syntax:
```
!!! type "Title of Admonition"
    Something importatnt you want to highlight!
```
outputs this :point_down:

!!! type "Title of Admonition"
    Something importatnt you want to highlight!

### Admonition without text in the header  

The following markdown snippet 
```
!!! note 
    Admonition without text in the header 
```
outputs this :point_down:

!!! note 
    Admonition without text in the header 

### Admonition without header 

The following markdown snippet 
```
!!! note ""
    Admonition without header 
```
outputs this :point_down:

!!! note ""
    Admonition without header 

### Admonition with text and code

Include any code block directly inside the Admonition 
```
!!! note
    In Python we use indentation instead of curly braces:
    ```python
    i = 1
    while i < 6:
        print(i)
        if i == 3:
            break
        i += 1
    ```
    If indentation is wrong, the python code will fail to execute
```
The result will look like this :point_down:

!!! note
    In Python we use indentation instead of curly braces:
    ```python
    i = 1
    while i < 6:
        print(i)
        if i == 3:
            break
        i += 1
    ```
    If indentation is incorrect, the python code will fail to execute

### Collapsible Admonition

Start Admonition with ??? 
```
??? type "Python generator example"
    A generator function that yields ints is secretly just a function that
    returns an iterator of ints, so that's how we annotate it
    ``` python
    def g(n: int) -> Iterator[int]:
        i = 0
        while i < n:
            yield i
            i += 1
    ```
```
Result - collapsible Admonnition :point_down:

??? type "Python generator function example"
    A generator function that yields ints is secretly just a function that
    returns an iterator of ints, so that's how we annotate it
    ``` python
    def g(n: int) -> Iterator[int]:
        i = 0
        while i < n:
            yield i
            i += 1
    ```

### Nested Admonition 

You can create Admonitions inside other Admonitions
```
??? note "Open styled details"
    ??? danger "Nested details!"
        And more content again.
```
Looking like this :point_down:
??? note "Open styled details"
    ??? danger "Nested details!"
        And more content again.

### Admonitions with tabs

Using tabs inside Admonitions can be handy

!!! example "Recursion in markdown"
    === "Output"
        !!! example "Recursion in markdown"
            === "Output"
                `#!py3 return True`
                
            === "Markdown"
                ` #!py3 return True `
    === "Markdown"
        ```
        !!! example "Recursion in markdown"
            === "Output"
                `#!py3 return True`

            === "Markdown"
                ` #!py3 return True `
        ```

### Admonition types

There are numerous Admonition types that you can use to make important text stand out. 
Every Admonition starts with the type keyword following  after !!! or ??? For example, Admonition of **info** type
```
!!! info 
    The wood frog can hold its pee for up to eight months.
```
looks like this :point_down:
!!! info
    The wood frog can hold its pee for up to eight months.

**Other Admonition types:**

`summary`, `abstract`, `tldr`
!!! tldr
    went looking for myself and came back empty handed

`tip`, `hint`, `important`
!!! tip
    If you get a loan at a bank, you will be paying for it 30 years. If you rob a bank you will be out in just 10

`success`, `check`, `done`
!!! success
    Monday 12:30. I finally came to office and had my first cup of coffee

`question`, `help`, `faq`
!!! question
    How far of a drive is it from Miami to Florida?

`warning`, `caution`, `attention`
!!! warning
    Don't feed the Dragons! They are on a strict diet.

`failure`, `fail`, `missing`
!!! failure
    I made Jusus shaped cookies but I burnt them

`danger`, `error`
!!! error
    ErrorReporter stopped working

`bug`
!!! bug
    A ladybird bug can eat 5,000 insects in its whole lifetime

`example`
!!! example
    Unlike humans, bees can make collaborative decisions

`quote`, `cite`
!!! quote 
    Always remember that you are absolutely unique. Just like everyone else


