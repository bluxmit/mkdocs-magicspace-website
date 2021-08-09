## Tabs

Tabs come in handy if you want to create concise documentation. 

***Pros and Cons of the Internet:***
=== "Pros"
    1. Everyone's always on it
    2. Everyone can use it
    3. Anyone can easily share their thoughts
    4. Old friends can find you
    5. Things can go viral
    6. It makes things easily accessible
=== "Cons"
    1. It makes things easily accessible
    2. Things can go viral
    3. Old friends can find you
    4. Anyone can easily share their thoughts
    5. Everyone can use it
    6. Everyone's always on it

Create tabs by using `===` together with the tab name

!!! example "Example of Tabs"
    === "Markdown"
        ```
        ***Pros and Cons of the Internet:***
        === "Pros"
            1. Everyone's always on it
            2. Everyone can use it
            3. Anyone can easily share their thoughts
            4. Old friends can find you
            5. Things can go viral
            6. It makes things easily accessible
        === "Cons"
            1. It makes things easily accessible
            2. Things can go viral
            3. Old friends can find you
            4. Anyone can easily share their thoughts
            5. Everyone can use it
            6. Everyone's always on it
        ```
    === "Output"
        ***Pros and Cons of the Internet:***
        === "Pros"
            1. Everyone's always on it
            2. Everyone can use it
            3. Anyone can easily share their thoughts
            4. Old friends can find you
            5. Things can go viral
            6. It makes things easily accessible
        === "Cons"
            1. It makes things easily accessible
            2. Things can go viral
            3. Old friends can find you
            4. Anyone can easily share their thoughts
            5. Everyone can use it
            6. Everyone's always on it

## Lists

Ordered and unordered lists are standard Mardown features. Extended markdown adds ***definition lists*** and ***task lists***.

!!! example "Unordered list"
    === "Output"
        **New Guiness records made in 2020:** 

        * Cycling Backward With A Violin
        * Longest Ear Hair
        * Largest Smurf Meeting Ever
        * Hardest Kick In The Groin
    === "Markdown"
        ```
        **New Guiness records made in 2020:** 

        * Cycling Backward With A Violin
        * Longest Ear Hair
        * Largest Smurf Meeting Ever
        * Hardest Kick In The Groin
        ```

!!! example "Ordered list"
    === "Output"
        **Best inventions of 2020:** 

        1. Hi-tech
            1. DVD rewinder
            2. Cup holder that clips to a table
        2. Military
            1. Curved barrel machine gun
            2. Pigeon-projected missiles
        3. For every day
            1. Barbed wire baby cage
            2. Bras for men
                * same size cups
                * different size cups
    === "Markdown"
        ```
        **Best inventions of 2020:** 

        1. Hi-tech
            1. DVD rewinder
            2. Cup holder that clips to a table
        2. Military
            1. Curved barrel machine gun
            2. Pigeon-projected missiles
        3. For every day
            1. Barbed wire baby cage
            2. Bras for men
                * same size cups
                * different size cups
        ```


!!! example "Definition list"
    === "Output"
        `Bamboozle`
        :   Cheat or fool.

        `Brouhaha`
        :   A noisy and overexcited reaction or response to something.

        `Canoodle`
        :   Kiss and cuddle amorously.

    === "Markdown"
        ```
        `Bamboozle`
        :   Cheat or fool.

        `Brouhaha`
        :   A noisy and overexcited reaction or response to something.

        `Canoodle`
        :   Kiss and cuddle amorously.
        ```
    
!!! example "Tasklist"
    === "Output"
        - [X] Plans at work
            * [X] Make vanilla pudding. Put in mayo jar. Eat in the office during the lunch break
            * [X] Wear shirt that says “Life”. Hand out lemons to colleagues.
            * [ ] Hire two private investigators. Get them to follow each other.
        - [ ] Personal plans
            * [X] Make an alcoholic beverage and name it “responsibly.” Start drinking Responsibly.
            * [ ] Sneeze in front of the Pope. Get blessed.
            * [ ] Buy a horse, name it “Oscar Takes The Lead,” enter it in horse races.

    === "Markdown"
        ```
        - [X] Plans at work
            * [X] Make vanilla pudding. Put in mayo jar. Eat in the office during the lunch break
            * [X] Wear shirt that says “Life”. Hand out lemons to colleagues.
            * [ ] Hire two private investigators. Get them to follow each other.
        - [ ] Personal plans
            * [X] Make an alcoholic beverage and name it “responsibly.” Start drinking Responsibly.
            * [ ] Sneeze in front of the Pope. Get blessed.
            * [ ] Buy a horse, name it “Oscar Takes The Lead,” enter it in horse races.
        ```



## Footnotes

Footnotes are great to focus on what is important for the reader, clarifying details down below. 
See an example of a text with footnotes (and markdown). 

!!! example "Tasklist"
    === "Output"
        In my junior year of high school[^1], this guy asked me on a date. He rented a movie and made me a salami pizza[^2]. 
        We were watching the movie[^3] and the oven beeped so the pizza was done. He looked me dead in the eyes and said, 
        “This is the worst part.”[^4] I then watched this boy open the oven and pull the pizza out with his bare hands, 
        screaming at the top of his lungs. We never had a second date.

        [^1]:
            It was in Tulsa Oklahoma
        [^2]: 
            I told him 3 times I was a vegetarian
        [^3]:
            Die Hard 2 - his favourite. On a first date. Really? 
        [^4]:
            I thought it was about the movie
    === "Markdown"
        ```
        In my junior year of high school[^1], this guy asked me on a date. He rented a movie and made me a salami pizza[^2]. 
        We were watching the movie[^3] and the oven beeped so the pizza was done. He looked me dead in the eyes and said, 
        “This is the worst part.”[^4] I then watched this boy open the oven and pull the pizza out with his bare hands, 
        screaming at the top of his lungs. We never had a second date.

        [^1]:
            It was in Tulsa Oklahoma
        [^2]: 
            I told him 3 times I was a vegetarian
        [^3]:
            Die Hard 2 - his favourite. On a first date. Really? 
        [^4]:
            I thought it was about the movie
        ```

:point_down: Notice, footnotes are displayed not in the admonition box, but ate the end of the page.
