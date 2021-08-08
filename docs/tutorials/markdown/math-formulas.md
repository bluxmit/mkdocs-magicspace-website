## Arithmatex
The Arithmatex extension allows the rendering of block and inline block equations.   
Arithmatex formulas are markdown blocks enclosed in $$...$$ or \[...\]on separate lines:

!!! example "Inline Examples"

    === "Output"
        $p(x|y) = \frac{p(y|x)p(x)}{p(y)}$, \(p(x|y) = \frac{p(y|x)p(x)}{p(y)}\).

    === "Markdown"
        ```tex
        $p(x|y) = \frac{p(y|x)p(x)}{p(y)}$, \(p(x|y) = \frac{p(y|x)p(x)}{p(y)}\).
        ```