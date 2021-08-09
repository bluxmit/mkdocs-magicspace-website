There are couple of ways to create table using Markdown:   
The first - is to create pretty tabbed table using symbols ```|``` and ```-```

!!! example 
    === "Output"
        | Method      | Description                          |
        | ----------- | ------------------------------------ |
        | `GET`       | :material-check:     Fetch resource  |
        | `PUT`       | :material-check-all: Update resource |
        | `DELETE`    | :material-close:     Delete resource |
    === "Markdown"
        ```
        | Method      | Description                          |
        | ----------- | ------------------------------------ |
        | `GET`       | :material-check:     Fetch resource  |
        | `PUT`       | :material-check-all: Update resource |
        | `DELETE`    | :material-close:     Delete resource |
        ```

But the more convenient way is to separate columns with ```|```

!!! example "More convenient table syntaxis"
    === "Output"
        **Substance** | **Description**
        --- | --- 
        **Bureaucratium** | Element that has a negative half-life". In other words, the more time passes, the more massive "Bureaucratium" becomes
        **Unobtainium** | Extremely rare, costly, or reasonably unobtainable material
        **Buzzwordium** | Positively charged element, attracted to negatively low IQ 
    === "Markdown"
        ```
        **Substance** | **Description**
        --- | --- 
        **Bureaucratium** | Element that has a negative half-life". In other words, the more time passes, the more massive "Bureaucratium" becomes
        **Unobtainium** | Extremely rare, costly, or reasonably unobtainable material
        **Buzzwordium** | Positively charged element, attracted to negatively low IQ 
        ```

The text in the table can be aligned left, right or centered :point_down: :point_down: :point_down: 

!!! example "Left-Right alignment"
    === "Output"
        **Substance** | **Description**
        :--- | ---: 
        **Bombastium** | Rarest element in the world. Dropped into a barrel of water becomes one barrel of ice cream
        **Jerktonium** | Ingestion of jerktonium causes a bad attitude, but the effects are curable by song.
        **Philote** | The smallest possible particle, occupying no space at all.
    === "Markdown"
        ```
        **Substance** | **Description**
        :--- | ---: 
        **Bombastium** | Rarest element in the world. Dropped into a barrel of water becomes one barrel of ice cream
        **Jerktonium** | Ingestion of jerktonium causes a bad attitude, but the effects are curable by song.
        **Philote** | The smallest possible particle, occupying no space at all.
        ```

!!! example "Table with centered columns"
    === "Output"
        **Substance** | **Description**
        :---: | :---: 
        **Philosophon** | A unit of logic so tiny only a philosopher could hope to split it. 
        **Stalinium** | Alloy was used during WW2 providing Soviet forces enough toughness to bounce off enemy projectiles.
        **Boyfriend Material** | Material that's becoming harder and harder to find these days.
    === "Markdown"
        ```
        **Substance** | **Description**
        :---: | :---: 
        **Philosophon** | A unit of logic so tiny only a philosopher could hope to split it.
        **Stalinium** | Alloy was used during WW2 providing Soviet forces enough toughness to bounce off enemy projectiles.
        **Boyfriend Material** | Material that's getting harder and harder to find these days.
        ```

!!! hint 
    Tables can be a very powerful feature if generated automatically using python and templates or loaded from csv files