--8<-- "docs/tutorials/markdown/snippets/remove-toc.md"

!!! info
    **In most cases, you will not use the features described in this section, and you can skip them. 
    This section was added to demonstrate that you will be not limited by standard or even Extended Markdown.** 
    
    **If you stumble upon the limitations of Markdown, you can use raw HTML, CSS, and even Javascript directly 
    in your Markdown documents, greatly extending its functionality.**

    **This section might convince you that Markdown (using MkDocs-MagicSpace) is the right choice to start. 
    Because even if you hit the limitations of the extended Markdown sometime in the future, you will be able 
    to solve it without the need to remake everything using another technology**{style="color: red"} 

## Attribute lists
The [Attribute Lists](https://python-markdown.github.io/extensions/attr_list/) adds the ability to apply CSS styles to Markdown elemennts. 
It is very easy and convenient way to go beyond standard Markdown.  

In order to apply attributes add block with {curly braces} after the element, use it to specify class names or css styles.   

For example, text customized using attribute list :point_down:
!!! example 
    === "Output"
        ```
        Do you know the difference between a car salesperson and a software salesperson? The car salesperson knows when they're lying.
        ```{style="background-color: black; color: white"}
    === "Markdown"
        ````
        ```
        Do you know the difference between a car salesperson and a software salesperson? The car salesperson knows when they're lying.
        ```{style="background-color: black; color: white"}
        ````

If you are using MkDocs-MagicSpace, MkDocs material theme is set up and you can style a link to another website to look like a button with Material design. 
You just need to list classes that should be applied to the link :point_down:
!!! example "Style link as button"
    === "Output"
        [Visit our Github page :fontawesome-brands-github-alt:](https://github.com/bluxmit/alnoda-workspaces){ .md-button .md-button--primary }
    === "Markdown"
        ```
        [Visit our Github page :fontawesome-brands-github-alt:](hhttps://github.com/bluxmit/alnoda-workspaces){ .md-button .md-button--primary }
        ```

## HTML & CSS inside Markdown
You can use HTML and CSS directly inside your Markdown document mixing them all together. This gives you the great power!   

Now we can style the text as much as we want :point_down:

!!! example "Styling text"
    === "Output"
        <span style="font-family: serif; color: #f59842; font-size: 1.2rem;">Microsoft is working on software for self-driving vehicles</span></br>
        <span style="font-family: serif; color: teal; font-size: 0.8rem;">I can't wait until my car suddenly stops in the middle of the highway and reboots to install updates.</span>   
    === "Markdown"
        ```
        <span style="font-family: serif; color: #f59842; font-size: 1.2rem;">Microsoft is working on software for self-driving vehicles</span></br>
        <span style="font-family: serif; color: teal; font-size: 0.8rem;">I can't wait until my car suddenly stops in the middle of the highway and reboots to install updates.</span>
        ```

A good idea is to combine HTML + CSS with Attribut lists. You can define CSS for some class in the ```<style>``` tag, and apply it many 
times to different obbjects. 

--8<-- "docs/tutorials/markdown/snippets/pumping-heart.md"

!!! hint "Animated icon"
    === "Output"
        :octicons-heart-fill-24:{ .heart }  :octicons-heart-fill-24:{ .heart }  :octicons-heart-fill-24:{ .heart }
    
    === "Markdown"
        ```
        --8<-- "docs/tutorials/markdown/snippets/pumping-heart.md"

        :octicons-heart-fill-24:{ .heart }  :octicons-heart-fill-24:{ .heart }  :octicons-heart-fill-24:{ .heart }
        ```

## Markdown inside HTML & CSS

By default, Markdown ignores any content within a raw HTML block-level element. But MkDocs MagicSpace has lots of plugins and extensions installed, so this is not a problem! 
The content of a raw HTML block-level element can be parsed as Markdown by including a markdown attribute on the opening tag.   

For example, the checklist is left-centered:

- [X] One
- [X] Two
- [ ] Three

Let's make it middle-centered by wrapping in the HTML 

!!! hint "Markdown within HTML"
    === "Output"
        <div style="display: flex; justify-content: center;" markdown="block">

        - [X] One
        - [X] Two
        - [ ] Three

        </div>
    === "Markdown"
        ```
        <div style="display: flex; justify-content: center;" markdown="block">

        - [X] One
        - [X] Two
        - [ ] Three

        </div>
        ```

You can find more information about Markdown within HTML [in this document](https://github.com/Python-Markdown/markdown/blob/master/docs/extensions/md_in_html.md)

## Modify MkDocs pages

You can use CSS to modify any MkDocs document page, for example, remove components you don't like. 
For instance, the Table of Content (TOC), which you can see on other pages was, removed from this page 
by adding the following snippet of code directly to the Markdown :point_down:

```html
--8<-- "docs/tutorials/markdown/snippets/remove-toc.md"
```

!!! hint 
    There is a bettter way to remove TOC or navigation from any page - using metadata in the beginning of the page

    ```
    ---
    hide:
    - navigation
    - toc
    ---
    ```

## Go full crazy

Finally, you can include very sophisticated HTML, CSS and even Javascript code inside your Markdown documents 

--8<-- "docs/tutorials/markdown/snippets/concierge.md"

??? example "Show the code"
    ```
    --8<-- "docs/tutorials/markdown/snippets/concierge.md"
    ```
