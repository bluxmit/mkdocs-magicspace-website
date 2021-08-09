

You can use Jinja2 templates in your documentation mixing it with Markdown in the same **.md** file! 

!!! warning 
    this is a very brief introduction to Jinja2.  in order to get the full power, we recommend to go through 
    [this tutorial](https://ttl255.com/jinja2-tutorial-part-1-introduction-and-variable-substitution/) and 
    look into [Jinja2 documentation](https://jinja.palletsprojects.com).

Typical cases for using templates are:

- generate dynamic content 
- avoid repetative Markdown code
- render different Markdown code depending on condition

Templates code is wrapped with one of the following notations

- {% raw %} {% ... %} {% endraw %} - for Statements
- {% raw %} {{ ... }} {% endraw %} - for Expressions to print to the template output
- {% raw %} {# ... #} {% endraw %} - for Comments not included in the template output

Template code on its own is not displayed in the ready Markdown document, only results of the 
templates application are displayed.  

### Variables

Set variable is as simple as ```{% raw %} {% set my_variable = "Variable inside the emplate" %} {% endraw %}```. 
In order to outpu the variable add this piece to your Markdown ```{% raw %} {{my_variable}} {% endraw %}```.

!!! example "Variables"
    === "Output"
        First let's declare a text variable {% set my_variable = "String printed by the template" %}. 
        And then print it in bold: **{{my_variable}}**{style="color: red"}.

        we can also create variables of other types, for example:

        - lists {% set my_list = [1, 2, 3, 4, 5] %}
        - dictionaries {% set my_dict = {"one": 1, "two": 2, "three": 3} %}

        Now we print my_list = {{my_list}} and dict = {{my_dict}}   

        We can get separate elements of the dicts and lists. For example first element of the list is **{{ my_list[0] }}**, 
        and element "two" from the dict is **{{ my_dict["two"] }}**
    === "Markdown"
        ```
        First let's declare a text variable {% raw %}{% set my_variable = "String printed by the template" %}{% endraw %}. 
        And then print it in bold and red: {% raw %} **{{my_variable}}**{style="color: red"} {% endraw %}.  

        we can also create variables of other types, for example:

        - lists {% raw %}{% set my_list = [1, 2, 3, 4, 5] %}{% endraw %}
        - dictionaries {% raw %}{% set my_dict = {"one": 1, "two": 2, "three": 3} %}{% endraw %}

        Now we print my_list = {% raw %}{{my_list}}{% endraw %} and dict = {% raw %}{{my_dict}}{% endraw %}

        We can get separate elements of the dicts and lists. For example first element of the list is **{% raw %}{{ my_list[0] }}{% endraw %}**, 
        and element "two" from the dict is **{% raw %}{{ my_dict["two"] }}{% endraw %}**
        ```

!!! hint "Assign variables in the beginning of the Markdown document"
    === "Output"
        {% set lang = "PHP" %}
        {% set where = "the Adult Website" %}
        {% set who =  "family" %}

        It is more convenient to have all variable declarations in the beginning of your Markdown document rather than 
        having them all scattered thoughout the doc.   

        Because we declared variables, we can use them in the following text now

        >```
        I saw an ad for a {{lang}} developer for {{where}} the other day.     
        It was really attractive but I don't know if I could bring myself to admit before my friends and {{who}}
        that I will be coding in {{lang}}
        ```

    === "Markdown"
        ```
        {% raw %}{% set lang = "PHP" %}{% endraw %}
        {% raw %}{% set where = "the Adult Website" %}{% endraw %}
        {% raw %}{% set who =  "family" %}{% endraw %}

        It is more convenient to have all variable declarations in the beginning of your Markdown document rather than 
        having them all scattered thoughout the doc.   

        Because we declared variables, we can use them in the following text now

        >```
        I saw an ad for a {% raw %}{{lang}}{% endraw %} developer for {% raw %}{{where}}{% endraw %} the other day.     
        It was really attractive but I don't know if I could bring myself to admit before my friends and  {% raw %}{{who}}{% endraw %}
        that I will be coding in {% raw %}{{lang}}{% endraw %}
        ```
        ```

### Statements

You can use notation `{% raw %} {{ ... }} {% endraw %}` not only to print variables, but also to evaluate some statements (with or without the variables). 
For example, this `{% raw %} {{ 1 + 2 + 3 }} {% endraw %}` is rendered as {{ 1 + 2 + 3 }}. And if we declare list like this `{% raw %}{% set my_list = [1, 2, 3, 4, 5] %}{% endraw %}` 
then `{% raw %}{{ my_list[1] + 2 }}{% endraw %}` will produce {{my_list[1] + 2}}

In a statement you can use use any of the methods of defined on a python's variable’s type. For example `{% raw %}{{ "nincompoop".upper() }}{% endraw %}`
will produce {{ "nincompoop".upper() }} .  

??? hint "Python types methods in Jinja2"
    **check [here](https://jinja.palletsprojects.com/en/2.10.x/templates/#random) how to use the following Jinja filters:**{style="color: red"}

    1 | 2 | 3 | 4 | 5
    --- | --- | --- | --- | --- 
    abs() | float() | lower() | round() | tojson() 
    forceescape() | map() | safe() | trim() | batch() 
    select() | truncate() | capitalize() | groupby() | min() 
    unique() | center() | indent() | pprint() | slice() 
    default() | int() | random() | sort() | urlencode() 
    dictsort() | join() | reject() | string() | urlize() 
    last() | rejectattr() | striptags() | wordcount() | escape()
    replace() | sum() | wordwrap() | first() | list() 
    title() | xmlattr() | reverse() | length() | filesizeformat() 
    dictsort() | upper() | selectattr() | max() | attr()

### Filters

It is more common to use Jinja2 filters, rather than apply method as we did it in section above.  

Jinja2 filter is something we use to transform data held in variables. 
We apply filters by placing pipe symbol `|` after the variable followed by name of the filter. 
MAny of the Python type methods listed in the section above, can be as well applied as filters in Jinja2 templates.   

The example, but using filter will be `{% raw %}{{ "nincompoop" | upper }}{% endraw %}` producing same output - {{ "nincompoop".upper() }}  

*Examples of filters*

**Filter** | **Description** | **Markdown** | **Output**
:--- | --- | --- | ---
round | round numeric variable | `{% raw %}{{ 25.6 | round }}{% endraw %}` | {{ 25.5 | round }}
sort | sort list | `{% raw %}{{ [4, 1, 6, 2] | sort }}{% endraw %}` | {{ [4, 1, 6, 2] | sort }}
reverse | reverse string | `{% raw %}{{ "NOT A PALINDROME" | reverse }}{% endraw %}` | {{ "NOT A PALINDROME" | reverse }}
join | join all strings in a list into one string | `{% raw %}{{ ['a', 2, 'b', '3'] | join('-') }}{% endraw %}` | {{ ['a', 2, 'b', '3'] | join('-') }}
replace | replace char in a string | `{% raw %}{{ "aaaBBBaaa" | replace('B', 'X') }}{% endraw %}` | {{ "aaaBBBaaa" | replace('B', 'X') }}

Filters can be applied to different types, for example filter **replace** works not only with a string, 
but also with a list of strings, being applied to each of its elements 
`{% raw %}{{ ['aB', 'BB', 'c'] | replace('B', 'X') }}{% endraw %}` produces {{ ['aB', 'BB', 'c'] | replace('B', 'X') }}


### Loops

The syntaxis of the loop looks like this 

```
{% raw %}
{% for item in seq %}
    {{item}}
{% endfor %}
{% endraw %}
```

Loops are very handy to avoid Markdown code duplication and generate templates dynamically from data. The following example creates table 
from the dictionary

=== "Output"
    {% 
        set towns = [
            {"town": "Boring", "state": "Oregon"},
            {"town": "Hell", "state": "Michigan"},
            {"town": "Hot Coffee", "state": "Mississippi"},
            {"town": "Intercourse", "state": "Pensylvania"},
            {"town": "No Name", "state": "Colorado"},
            {"town": "Pee Pee", "state": "Ohaio"}
        ] 
    %}

    Funny American town names (***Table generated by the template***)

    **Town** | **State**
    :--- | ---  
    {% for item in towns %} {{ item["town"] }} | {{ item["state"] }} 
    {% endfor %}
=== "Markdown"
    ```
    {% raw %}{% 
        set towns = [
            {"town": "Boring", "state": "Oregon"},
            {"town": "Hell", "state": "Michigan"},
            {"town": "Hot Coffee", "state": "Mississippi"},
            {"town": "Intercourse", "state": "Pensylvania"},
            {"town": "No Name", "state": "Colorado"},
            {"town": "Pee Pee", "state": "Ohaio"}
        ] 
    %}{% endraw %}

    Funny American town names (***Table generated by the template***)

    **Town** | **State**
    :--- | ---  
    {% raw %}{% for item in towns %} {{ item["town"] }} | {{ item["state"] }} 
    {% endfor %}{% endraw %}
    ```

Diagrams also can be generated using templates

!!! example "Pie chart from template"
    === "Output"
        {% 
            set google_stat = [
                {"reason": "Adult content", "percent": 35},
                {"reason": "Lazy typing .com", "percent": 11},
                {"reason": "Spell checking", "percent": 51},
                {"reason": "Find useful info", "percent": 3}
            ] 
        %}

        ```mermaid
        pie
            title Why we use Google
            {% for item in google_stat %}"{{ item.reason }}" : {{ item.percent }}
            {% endfor %}
        ```
    === "Markdown"
        ````
        {% raw %}{% 
            set google_stat = [
                {"reason": "Adult content", "percent": 35},
                {"reason": "Lazy typing .com", "percent": 11},
                {"reason": "Spell checking", "percent": 51},
                {"reason": "Find useful info", "percent": 3}
            ] 
        %}{% endraw %}

        ```mermaid
        pie
            title Why we use Google
            {% raw %}{% for item in google_stat %}"{{ item.reason }}" : {{ item.percent }}
            {% endfor %}{% endraw %}
        ```
        ````

### Conditions

If-else statement has the following syntaxis

```
{% raw %}
{% if ... %}
    ...
{% elif ... %}
    ...
{% else %}
    ...
{% endif %}
{% endraw %}
```

!!! example "Schrodinger Kenny"
    === "Output"
        {% set schrodinger_kenny = [1,2,3,4,5,6,7,8,9] | random %}

        Every build of static documentation website will result in a different fate for Kenny

        {% if schrodinger_kenny <= 3 %}
            Kenny is sick.
        {% elif 3 < schrodinger_kenny <= 7 %}
            Kenny is dead
        {% else %}
            Kenny looks okay --- so far
        {% endif %}

    === "Markdown"
        ```
        {% raw %}{% set schrodinger_kenny = [1,2,3,4,5,6,7,8,9] | random %}{% endraw %}

        Every build of static documentation website will result in a different fate for Kenny
        {% raw %}
        {% if schrodinger_kenny <= 3 %}
            Kenny is sick.
        {% elif 3 < schrodinger_kenny <= 7 %}
            Kenny is dead
        {% else %}
            Kenny looks okay --- so far
        {% endif %}
        {% endraw %}
        ```












