
## Header 
Start section / sub-section of your document with a header 
```
# This is the largest header 
## This is a smaller header 
###### This is a very small header
```

## Paragraph
To create a line break, end a line with two or more spaces, and then type return.  

To create paragraphs, use a blank line to separate one or more lines of text.
!!! example "Paragraphs"
    === "Output"
        Q: What is the chemical formula for "coffee"?  
        A: CoFe2

        Q: What is the chemical formula for "banana"?  
        A: BaNa2

    === "Markdown"
        ```
        Q: What is the chemical formula for "coffee"?  
        A: CoFe2

        Q: What is the chemical formula for "banana"?  
        A: BaNa2
        ```

## Emphasize text
You can add emphasis by making text bold, italic, strikethrough or combine them alltogether.

!!! example "Text emphasis"
    === "Output"
        **This is bold text**

        *This is italic text*

        ***This is bold italic text***

        ~~this is strikethrough~~

        ~~***This is strikethrough bold italic text***~~

    === "Markdown"
        ```
        **This is bold text**

        *This is italic text*

        ***This is bold italic text***

        ~~this is strikethrough~~

        ~~***This is strikethrough bold italic text***~~
        ```

:point_right: Markdown is designed to create readable documents, and features that hurt readability do not have standard Markdown syntaxis. 
For example, font size or text color. 

Despite this is not a standard Markdown feature, it is not hard to change the fonts and colors. 
Read how it can be done in the next section - [Hack the Markdown](hack-markdown.md) 

## Rules

To create a horizontal rule, use three or more asterisks ```***```, dashes ```---```, or underscores ```___``` on a line by themselves.  

!!! example "Rules"
    === "Output"
        Einstein dreaded Christmas. The whole family would come round, and he'd spend the entire day 
        trying to work out a new theory of relativity.
        -------
        A physics professor always made his class sit on the edge of a cliff while they studied. 
        He said that was where they had most potential.
        -------
        Physics lesson: When a body is submerged in water, the phone rings.

    === "Markdown"
        ```
        Einstein dreaded Christmas. The whole family would come round, and he'd spend the entire day 
        trying to work out a new theory of relativity.
        -------
        A physics professor always made his class sit on the edge of a cliff while they studied. 
        He said that was where they had most potential.
        -------
        Physics lesson: When a body is submerged in water, the phone rings.
        ```

## Links

To quickly turn a URL or email address into a link, enclose it in angle brackets.

!!! example "Links"
    === "Output"
        <https://alnoda.org>   
        <alnoda@alnoda.com>
    === "Markdown"
        ```
        <https://www.alnoda.org>   
        <alnoda@alnoda.com>
        ```

Addinng the whole URL of the webpage you want to link looks chunky and not recommended. Instead create text links 

!!! example "Links with titles"
    === "Output"
        Recommended markdown references:  

        - [Getting started with markdown](https://programminghistorian.org/en/lessons/getting-started-with-markdown)    
        - [The Markdown Guide](https://www.markdownguide.org/) 
    === "Markdown"
        ```
        Recommended markdown references:  

        - [Getting started with markdown](https://programminghistorian.org/en/lessons/getting-started-with-markdown)    
        - [The Markdown Guide](https://www.markdownguide.org/)   
        ```

You can easily link Markdown documents with each other using relative paths.  
If the doc you want to link is in the same folder, just use its name 

!!! example "Links betweenn markdown documents"
    === "Output"
        Recommended markdown references:  

        - [Hack the Markdown](hack-markdown.md)    
        - [Improve readability with tabs, lists and footnotes](improve-readability.md) 
    === "Markdown"
        ```
        Recommended markdown references:  

        - [Hack the Markdown](hack-markdown.md)    
        - [Improve readability with tabs, lists and footnotes](improve-readability.md)   
        ```

And you can make links to the sections of the same markdown file, or any other markdown file  

!!! example "Links betweenn markdown documents"
    === "Output"
        Link a paragraph in this doc  

        [Emphasize text](#emphasize-text)   

        Link to a paragraph in the other doc 

        [Sequence diagram](diagrams.md#sequence-diagram)
        
    === "Markdown"
        ```
        Link a paragraph in this doc  

        [Emphasize text](#emphasize-text)   

        Link to a paragraph in the other doc 

        [Sequence diagram](diagrams.md#sequence-diagram)  
        ```


