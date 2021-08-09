Mermaid allows using text syntaxis to create diagrams. Thus Mermaid diagrams can be part 
of Markdown documentation and have all the benefits of version control or can even be auto-generated using jinja2 templates.

!!! warning 
    In this tutorial we provide introduction to basic features of Mermaid, but they alrteady allow you to do a lot! 
    Check out [complete Mermaid docs](https://mermaid-js.github.io/mermaid/) to learn the full power.

## Pie chart
Very simple, just specify title and all entries with absolute Values

!!! example "State Diagram"
    === "Output"
        ```mermaid
        pie
            title Key elements in Product X
            "Calcium" : 42.96
            "Potassium" : 50.05
            "Magnesium" : 10.01
            "Iron" :  5
        ```
    === "Markdown"
        ````
        ```mermaid
        pie
            title Key elements in Product X
            "Calcium" : 42.96
            "Potassium" : 50.05
            "Magnesium" : 10.01
            "Iron" :  5
        ```
        ````

## Flow chart
All Flowcharts are composed of nodes, the geometric shapes and edges, the arrows or lines. 
The code defines the way how these nodes and edges are made and connected.

Nodes always have id, which is used to create links, and optionally nodes can have text inside. There is a selection of node shapes.
Links can have text and be of different type.  

Graph should have direction: **LR** (left-right) or **TD** (top-down).

!!! example "Flow chart example"
    === "Output"
        ```mermaid
        graph TD
            A[Start] --> B{Is it?};
            B -->|Yes| C[OK];
            C --> D[Rethink];
            D --> B;
            B ---->|No| E[End];
        ```
    === "Markdown"
        ````
        ```mermaid
        graph TD
            A[Start] --> B{Is it?};
            B -->|Yes| C[OK];
            C --> D[Rethink];
            D --> B;
            B ---->|No| E[End];
        ```
        ````

!!! info "Nodes shapes"
    === "Output"
        ```mermaid
        graph LR
            A1 --> A2[text in the box] --> B2[text in the box]
            A3(rounded edges box) --> B3([round box]) --> C3((Circle))
            A4[[double wall]] --> B4[(Database)] -->  C4>Flag]
            A6{Diamond} --> B6[/Prism\] --> C6[\Reverse Prism/]
        ```
    === "Markdown"
        ````
        ```mermaid
        graph LR
            A1 --> A2[text in the box] --> B2[text in the box]
            A3(rounded border box) --> B3([rounded box]) --> C3((Circle))
            A4[[double wall]] --> B4[(Database)] -->  C4>Flag]
            A6{Diamond} --> B6[/Prism\] --> C6[\Reverse Prism/]
        ```
        ````

!!! info "Nodes links"
    === "Output"
        ```mermaid
        graph LR
        A --> B --- C --text!--- D
        E --text--> F -.-> G -.text.-> H
        I ==> J ==text==> K
        L --o M --x N
        O o--o P <--> Q x--x R
        ```
    === "Markdown"



## Sequence diagram
Sequence diagram is used to demonstrate interactions between actors - elements of some system. 
It is perfect to show how processes operate with one another and in what order.   

This diagram is a list of communications in the form ```[Actor][Arrow][Actor]:Message text```

??? info "Types of arrows" 
    **Type** | **Description**
    :--- | --- 
    -> | Solid line without arrow
    --> | Dotted line without arrow
    ->> | Solid line with arrowhead
    -->> | Dotted line with arrowhead
    -x 	| Solid line with a cross at the end
    --x | Dotted line with a cross at the end.
    -) | Solid line with an open arrow at the end (async)
    --) | Dotted line with a open arrow at the end (async)

!!! example
    === "Output"
        ```mermaid
        sequenceDiagram
            Producer ->> Queue: Message sent
            activate Queue
            Queue -->> Producer: Message acknowledged
            deactivate Queue
            Consumer ->> Queue: Get messages after offset 0
            activate Queue
            Queue --> Consumer: Message provided
            deactivate Queue
            activate Consumer
            Note over Consumer: Processing Message
            Consumer -->> Queue: change offset to 1
            deactivate Consumer
            loop Every 2 seconds
                Consumer --x Service Monitor: Send heartbeat
            end
            Note over Consumer,Service Monitor: restarted if no heartbeat
        ```
    === "Markdown"
        ````
        ```mermaid
        sequenceDiagram
            Producer ->> Queue: Message sent
            activate Queue
            Queue -->> Producer: Message acknowledged
            deactivate Queue
            Consumer ->> Queue: Get messages after offset 0
            activate Queue
            Queue --> Consumer: Message provided
            deactivate Queue
            activate Consumer
            Note over Consumer: Processing Message
            Consumer -->> Queue: change offset to 1
            deactivate Consumer
            loop Every 2 seconds
                Consumer --x Service Monitor: Send heartbeat
            end
            Note over Consumer,Service Monitor: restarted if no heartbeat
        ```
        ````

## Class diagram

Class diagram in the Unified Modeling Language (UML) describes the structure of a system by showing the system's classes, 
their attributes, operations (or methods), and the relationships between the objects.

!!! example "Class Diagram"
    === "Output"
        ```mermaid
        classDiagram
            Animal <|-- Duck
            Animal <|-- Fish
            Animal <|-- Zebra
            class Animal{
                +int age
                +String gender
                +isMammal()
                +mate()
            }
            class Duck{
                +String beakColor
                +swim()
                +quack()
            }
            class Fish{
                -int sizeInFeet
                -canEat()
            }
            class Zebra{
                +bool is_wild
                +run()
            }
        ```
    === "Markdown"
        ````
        ```mermaid
        classDiagram
            Animal <|-- Duck
            Animal <|-- Fish
            Animal <|-- Zebra
            class Animal{
                +int age
                +String gender
                +isMammal()
                +mate()
            }
            class Duck{
                +String beakColor
                +swim()
                +quack()
            }
            class Fish{
                -int sizeInFeet
                -canEat()
            }
            class Zebra{
                +bool is_wild
                +run()
            }
        ```
        ````

Create dirrefent relations between classes:

!!! example "Class Relations"
    === "Output"
        ```mermaid
        classDiagram
        classA --|> classB : Inheritance
        classC --* classD : Composition
        classE --o classF : Aggregation
        classG --> classH : Association
        classI -- classJ : Link(Solid)
        classK ..> classL : Dependency
        classM ..|> classN : Realization
        classO .. classP : Link(Dashed)
        ```
    === "Markdown"
        ````
        ```mermaid
        classDiagram
        classA --|> classB : Inheritance
        classC --* classD : Composition
        classE --o classF : Aggregation
        classG --> classH : Association
        classI -- classJ : Link(Solid)
        classK ..> classL : Dependency
        classM ..|> classN : Realization
        classO .. classP : Link(Dashed)
        ```
        ````

## Entity Relationship Diagram

ERD diagrams allow documenting data end establishing relations between data collections.   
Each relation consists of the following parts: ```  <first-entity> <relationship> <second-entity> : <relationship-label>```, 
i.e. ```ORDER ||--|{ LINE_ITEM : contains``` .  

The relationship part of each statement can be broken down into three sub-components:

- the cardinality of the first entity with respect to the second,
- whether the relationship confers identity on a 'child' entity
- the cardinality of the second entity with respect to the first

Cardinality is a property that describes how many elements of another entity can be related to the entity in question. 
In the above example a ORDER can have one or more LINE_ITEM instances associated to it, 
whereas a LINE_ITEM can have one and only one ORDER. In each cardinality marker there are two characters. 
The outermost character represents a maximum value, and the innermost character represents a minimum value. 
The table below summarises possible cardinalities.


**Value (left)** | **Value (right)** | **Meaning**
:--- | --- | ---
```|o``` |	```o|``` | Zero or one
```||``` | ```||``` | Exactly one
```}o``` |	```o{``` |	Zero or more (no upper limit)
```}|``` |	```|{``` | One or more (no upper limit)


!!! example "Class Relations"
    === "Output"
        ```mermaid
        erDiagram
            CUSTOMER {
                string name
                string custNumber
                string sector
            }
            ORDER {
                int orderNumber
                string deliveryAddress
            }
            LINE-ITEM {
                string productCode
                int quantity
                float pricePerUnit
            }
            ADDRESS {
                int addressId
                string street
                string city
                string cuntry
            }
            PRODUCT {
                string productCode
                string category
                string color
            }

            CUSTOMER ||--o{ ORDER : places
            ORDER ||--|{ LINE-ITEM : contains
            ADDRESS ||--o{ ORDER : ship-to 
            PRODUCT ||--o{ LINE-ITEM : contains
        ```
    === "Markdown"
        ````
        ```mermaid
        erDiagram
            CUSTOMER {
                string name
                string custNumber
                string sector
            }
            ORDER {
                int orderNumber
                string deliveryAddress
            }
            LINE-ITEM {
                string productCode
                int quantity
                float pricePerUnit
            }
            ADDRESS {
                int addressId
                string street
                string city
                string cuntry
            }
            PRODUCT {
                string productCode
                string category
                string color
            }

            CUSTOMER ||--o{ ORDER : places
            ORDER ||--|{ LINE-ITEM : contains
            ADDRESS ||--o{ ORDER : ship-to 
            PRODUCT ||--o{ LINE-ITEM : contains
        ```
        ```` 

## User Journey Diagram
User journeys describe at a high level of detail exactly what steps different users take to complete 
a specific task within a system, application or website. This technique shows the current (as-is) 
user workflow, and reveals areas of improvement for the to-be workflow.   

Each user journey is split into sections, these describe the part of the task the user is trying to complete.
Tasks syntax is ```<Task name>: <score>: <comma separated list of actors>```

!!! example "Customer Journey"
    === "Output"
        ```mermaid
        journey
            title Customer Journey & satisfaction
            section Onboardin
            Verification: 3: Private, Business, Cooperations
            Checks: 2: Private

            section Presale
            Meet representative: 5: Private, Business, Cooperations
            Legal Experiecne: 4: Business, Cooperations
            Live support: 4: Business, Cooperations
            Email support: 3: Private
        ```
    === "Markdown"
        ````
        ```mermaid
        journey
            title Customer Journey & satisfaction
            section Onboardin
            Verification: 3: Private, Business, Cooperations
            Checks: 2: Private

            section Presale
            Meet representative: 5: Private, Business, Cooperations
            Legal Experiecne: 4: Business, Cooperations
            Live support: 4: Business, Cooperations
            Email support: 3: Private
        ```
        ````

## Gantt diagram
Gantt Charts will record each scheduled task as one continuous bar that extends from the left to the right. 
The x axis represents time and the y records the different tasks and the order in which they are to be completed.  

Gantt chart consists of tasks grouped in sections. Every task has the folloving attributes 

**position** | **name** | **Optional** | **Values** 
:--- | --- | --- | --- 
1 | criticality | yes | ```crit``` 
2 | execution state | yes | ```active```, ```done``` 
3 | task id | yes | any 
4 | start date |  | ```after task_1d```, ```2021-01-06```
5 | end date |  | ```12d```, ```2021-01-23```



!!! example "State Diagram"
    === "Output"
        ```mermaid
        gantt
            title A Gantt Diagram
            dateFormat  YYYY-MM-DD

            section New Product
            R&D                         :crit,    done,    rnd1, 2021-01-06, 24h
            Product line                :crit,    active,  rnd2, after rnd1, 12d
            Launch                      :crit,    active,  rnd3, 2021-01-08, 2d
            Support                     :crit,             rnd4, after rnd3, 24d

            section Country Expansion 
            Office                      :         done,    exp1, 2021-01-06, 2021-01-09
            Country launch              :         done,    exp2, after exp1, 4d
            Marketing                   :         active,  exp3, 2021-01-09, 18d
            PR                          :                  after exp2, 5d
        ```
    === "Markdown"
        ````
        ```mermaid
        gantt
            title A Gantt Diagram
            dateFormat  YYYY-MM-DD

            section New Product
            R&D                         :crit,    done,    rnd1, 2021-01-06, 24h
            Product line                :crit,    active,  rnd2, after rnd1, 12d
            Launch                      :crit,    active,  rnd3, 2021-01-08, 2d
            Support                     :crit,             rnd4, after rnd3, 24d

            section Country Expansion 
            Office                      :         done,    exp1, 2021-01-06, 2021-01-09
            Country launch              :         done,    exp2, after exp1, 4d
            Marketing                   :         active,  exp3, 2021-01-09, 18d
            PR                          :                  exp4, after exp2, 5d
        ```
        ````

## Requirement Diagram
A Requirement diagram provides a visualization for requirements and their connections, to each other and other documented elements. 
The modeling specs follow those defined by SysML v1.6.

!!! example "State Diagram"
    === "Output"
        ```mermaid
        requirementDiagram

        requirement test_req {
        id: 1
        text: the test text.
        risk: high
        verifymethod: test
        }

        element test_entity {
        type: simulation
        }

        test_entity - satisfies -> test_req
        ```
    === "Markdown"
        ````
        ```mermaid
        requirementDiagram

        requirement test_req {
        id: 1
        text: the test text.
        risk: high
        verifymethod: test
        }

        element test_entity {
        type: simulation
        }

        test_entity - satisfies -> test_req
        ```
        ````

## State Diagram
State diagram - is a type of diagram used in computer science and related fields to describe the behavior of systems. 
State diagrams require that the system described is composed of a finite number of states; sometimes, this is indeed the case, 
while at other times this is a reasonable abstraction

!!! example "State Diagram"
    === "Output"
        ```mermaid
        stateDiagram-v2
            [*] --> Still
            Still --> Useless: Declare
            Useless --> [*]

            Still --> Moving
            Moving --> Still
            Moving --> Crash
            Crash --> if_state
            if_state --> Recover: if n < 0
            if_state --> Fail: if n >= 0
            Recover --> Still
            Fail --> [*]

            state Useless {
                [*] --> unload
                unload --> [*]
            }
            state if_state <<choice>>
        ```
    === "Markdown"
        ````
        ```mermaid
        stateDiagram-v2
            [*] --> Still
            Still --> Useless: Declare
            Useless --> [*]

            Still --> Moving
            Moving --> Still
            Moving --> Crash
            Crash --> if_state
            if_state --> Recover: if n < 0
            if_state --> Fail: if n >= 0
            Recover --> Still
            Fail --> [*]

            state Useless {
                [*] --> unload
                unload --> [*]
            }
            state if_state <<choice>>
        ```
        ````