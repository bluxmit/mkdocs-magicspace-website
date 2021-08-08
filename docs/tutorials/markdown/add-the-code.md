In order to create a code block, wrap the code with three backtics ```` ``` ````

!!! example "Code block"
    === "Output"
        ```
        if x == 1:
            print("x is 1.")
        ```
    === "Markdown"
        ````
        ```
        if x == 1:
            print("x is 1.")
        ```
        ````

In order to highlite code add name of the language, i.e. ```````python````

!!! example "Code highliting"
    === "Output"
        ```python
        if x == 1:
            print("x is 1.")
        ```
    === "Markdown"
        ````
        ```python
        if x == 1:
            print("x is 1.")
        ```
        ````

In order to add line numbers add ````*linenums="1"*```` 

!!! example "Code block with numbers"
    === "Output"
        ```python linenums="1"
        def insertion_sort(nums):
            for i in range(1, len(nums)):
                item_to_insert = nums[i]
                j = i - 1
                while j >= 0 and nums[j] > item_to_insert:
                    nums[j + 1] = nums[j]
                    j -= 1
                nums[j + 1] = item_to_insert
        ```
    === "Markdown"
        ````
        ```python linenums="1"
        def insertion_sort(nums):
            for i in range(1, len(nums)):
                item_to_insert = nums[i]
                j = i - 1
                while j >= 0 and nums[j] > item_to_insert:
                    nums[j + 1] = nums[j]
                    j -= 1
                nums[j + 1] = item_to_insert
        ```
        ````

You can also mark specific code lines or ranges
!!! example "Mark code lines"
    === "Output"
        ```{.py3 linenums="1" hl_lines="1 5-7"}
        def insertion_sort(nums):
            for i in range(1, len(nums)):
                item_to_insert = nums[i]
                j = i - 1
                while j >= 0 and nums[j] > item_to_insert:
                    nums[j + 1] = nums[j]
                    j -= 1
                nums[j + 1] = item_to_insert
        ```
    === "Markdown"
        ````
        ```{.py3 linenums="1" hl_lines="1 5-7"}
        def insertion_sort(nums):
            for i in range(1, len(nums)):
                item_to_insert = nums[i]
                j = i - 1
                while j >= 0 and nums[j] > item_to_insert:
                    nums[j + 1] = nums[j]
                    j -= 1
                nums[j + 1] = item_to_insert
        ```
        ````
    


Code can be highlited inside the text using the following syntaxis:
```
`#!py3 import pymdownx; pymdownx.__version__`
```

For example:

!!! example "Inline code highliting"
    === "Output"
        In many languages "hello world!" application is just one-liner. For example in OCaml it is `#!ocaml print_endline "Hello, world!";;` 
        in Ruby it is `#!ruby puts 'Hello World!'` in Python it is `#!py3 print("Hello World)"` and in javascript it is `#!js console.log("Hello, World!");` 

    === "Markdown"
        ````
        In many languages "hello world!" application is just one-liner. For example in OCaml it is `#!ocaml print_endline "Hello, world!";;` 
        in Ruby it is `#!ruby puts 'Hello World!'` in Python it is `#!py3 print("Hello World)"` and in javascript it is `#!js console.log("Hello, World!");` 
        ````

:bulb: Tabs are in particular very useful to group code blocks or display alternative code in different languages. 
For example **if-else** statement in different languages:

!!! hint "Language comparison"
    === "Output"
        === "Python"
            ``` python linenums="1"
            amount = 0
            if amount < 0:
                print('Negative amount')
            elif amount > 0:
                print('Positive amount')
            else:
                print('Zero')
            ``` 
        === "Java"
            ``` java linenums="1"
            int amount = 0;
            if (amount < 0) {
                System.out.println("Negative amount");
            } else if (amount > 0) {
                System.out.println("Positive amount");
            } else {
                System.out.println("Zero");
            }
            ``` 
        === "Ruby"
            ``` ruby linenums="1"
            amount = 0
            if amount < 0
                puts "Negative amount"
            elsif amount > 0
                puts "Positive amount"
            else
                puts "Zero"
            ``` 
    === "Markdown"
        ````
        === "Python"
            ``` python linenums="1"
            amount = 0
            if amount < 0:
                print('Negative amount')
            elif amount > 0:
                print('Positive amount')
            else:
                print('Zero')
            ``` 
        === "Java"
            ``` java linenums="1"
            int amount = 0;
            if (amount < 0) {
                System.out.println("Negative amount");
            } else if (amount > 0) {
                System.out.println("Positive amount");
            } else {
                System.out.println("Zero");
            }
            ``` 
        === "Ruby"
            ``` ruby linenums="1"
            amount = 0
            if amount < 0
                puts "Negative amount"
            elsif amount > 0
                puts "Positive amount"
            else
                puts "Zero"
            ``` 
        ````
    