You can use MkDocs Workspace to create powerful mathematical documentation websites or print documents, by exporting docs to pdf files.
MkDocs Workspace renders LaTeX math equations with [MathJax](https://docs.mathjax.org/en/latest/basic/mathjax.html). 

??? example "Showcase: formulas"
    === "Output"
        --8<-- "docs/tutorials/markdown/snippets/mathjax-showcase.md"
    === "Markdown"
        ```
        --8<-- "docs/tutorials/markdown/snippets/mathjax-showcase.md"
        ```

### Inline vs. block mode

Formulas are created using one of the notations:

- ```$...$``` and ```\(...\)``` for inline math 
- ```$$...$$```, ```\[...\]```, and ```\begin{}...\end{}``` for block math. 

Block mode should start from the new line.


=== "Output"
    Inline and block formulas render differently. 

    For example, this is $\sum_{i=0}^n i^2 = \frac{(n^2+\epsilon)(2n+1)}{6\phi}$
    an inline mode) 

    And the block mode looks like this (don't forget empty line!)

    $$\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$$
=== "Markdown"
    ```
    Inline and block formulas render differently. 

    For example, this is $\sum_{i=0}^n i^2 = \frac{(n^2+\epsilon)(2n+1)}{6\phi}$
    an inline mode) 

    And the block mode looks like this (don't forget empty line!)

    $$\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$$
    ```

Add Greek letters to the formula

=== "Output"
    $$\sum_{i=0}^n \pi^2 = \Delta\frac{(n^2+\epsilon)(2n+1)}{6\phi}$$
=== "Markdown"
    ```
    $$
    \sum_{i=0}^n \pi^2 = \Delta\frac{(n^2+\epsilon)(2n+1)}{6\phi}
    $$
    ```

## Groups
A *group* is either a single symbol, or any formula surrounded by curly braces {…}. 
Operators, fractions, subscripts or superscripts appy to the group or groups. 

For example, you can use use ```^``` and ```_``` to create superscripts and subscripts respectively.
=== "Output"
    $$
    x_i^2 + \log_2 x 
    $$
=== "Markdown"
    ```
    $$
    x_i^2 + \log_2 x 
    $$
    ```
And because superscripts, subscripts, and other operations apply only to the next **group**, 
if you write ```10^10```, you will get a surprise: $10^10$. But ```10^{10}``` gives what you probably wanted: $10^{10}$.

## Fractions
In order to create fractions use ```\frac{...}{...}```. I.e.

=== "Output"
    $$
    \frac{73^2-1}{12^2}
    $$
=== "Markdown"
    ```
    $$
    \frac{73^2-1}{12^2}
    $$
    ```

Combine Fractions

=== "Output"
    $$
    \frac{\Gamma + \Omega}{\frac{73^2-1}{12^2}}
    $$
=== "Markdown"
    ```
    $$
    \frac{\Gamma + \Omega}{\frac{73^2-1}{12^2}}
    $$
    ```

## Operators and other notations

Examples of Latex math operators and notations

**Notation** | **Output**
:--- | ---
```\sqrt{x}``` | $\sqrt{x}$
```\sin(a + b)``` | $\sin(a + b)$
```\log(x + y)``` | $\log{(x + y)}$
```\log_4(x + y)``` | $\log_4{(x + y)}$
```\ln{x}``` | $\ln{x}$
```e^{x + y}``` | $e^{x + y}$
```\lim_{x \to 0}{x^2}``` | $\lim_{x \to 0}{x^2}$
```\min{x}``` | $\min{x}$
```f(n) = x^2``` | $f(n) = x^2$
... | ...

## Special symbols

**Notation** | **Output**
:--- | ---
```a\equiv b``` | $a\equiv b$   
```\bar{x} - \hat{x} - \tilde{x}``` | $\bar{x} \hat{x} \tilde{x}$
```\dot{x} + \ddot{x} + \dddot{x}``` | $\dot{x} \ddot{x} \dddot{x}$
```\exists a,b\in G$ with $a\neq b$ such that $f(a)=f(b)``` | $\exists a,b\in G$ with $a\neq b$ such that $f(a)=f(b)$    
```a_1 + a_2 + a_3 + \cdots + a_n``` | $a_1 + a_2 + a_3 + \cdots + a_n$   
```\lt \gt \le \leq \leqq \leqslant``` | $\lt \gt \le \leq \leqq \leqslant$
```\ge \geq \geqq \geqslant \neq``` | $\ge \geq \geqq \geqslant \neq$
```\times \div \pm \mp \cdot``` | $\times \div \pm \mp \cdot$   
```\cup \cap``` | $\cup \cap$ 
```\setminus \subset \subseteq \subsetneq \supset``` | $\setminus \subset \subseteq \subsetneq \supset$
```\in \notin``` | $\in \notin$
```\emptyset \varnothing``` | $\emptyset \varnothing$  
```\binom{n+1}{2k}``` | $\binom{n+1}{2k}$  
```\to \rightarrow \leftarrow \Rightarrow \Leftarrow \mapsto``` | $\to \rightarrow \leftarrow \Rightarrow \Leftarrow \mapsto$  
```\land \lor \lnot \forall \exists \top \bot \vdash \vDash``` | $\land \lor \lnot \forall \exists$   
```$\top \bot \vdash \vDash$``` | $\top \bot \vdash \vDash$
```\approx \sim \simeq \cong \equiv \prec \lhd \therefore``` | $\approx \sim \simeq \cong \equiv \prec \lhd \therefore$  
```\overline{ABC}``` | $\overline{ABC}$
```\underline{XYZ}``` | $\underline{XYZ}$
```\widetilde{AB}``` | $\widetilde{AB}$
```\underleftarrow{ABC}``` | $\underleftarrow{ABC}$ 
```\underrightarrow{XYZ}``` | $\underrightarrow{XYZ}$
```\xleftarrow{} \xrightarrow{}``` | $\xleftarrow{} \xrightarrow{}$

## Sums, products, integrals

**Notation** | **Output**
:--- | ---
```\sum_{i=0}^n i^2``` | $\sum_{i=0}^n i^2$
```\prod_{i=0}^n (2i + i)``` | $\prod_{i=0}^n (2i + i)$
```\int(x)``` | $\int(x)$
```\int_{i=0}^n (2i + i)``` | $\int_{i=0}^n (2i + i)$
```\iint``` | $\iint$
```\iiint``` | $\iiint$
```\idotsint``` | $\idotsint$


## Set operators
**Notation** | **Output**
:--- | ---
```\overline{A} = A^c``` | $\overline{A} = A^c$
```A \in B, B \notin C, D = \emptyset``` | $A \in B, B \notin C, D = \emptyset$
```(A \cup B \cap C) \setminus (D \subset E) \subseteq F``` | $(A \cup B \cap C) \setminus (D \subset E) \subseteq F$ 
```\bigcup_{i=1}^n A_i``` | $\bigcup_{i=1}^n A^i$
```\bigcap_{i=1} A_i``` | $\bigcap_{i=1} A_i$ 


## Parentheses
Ordinary symbols ```()[]``` make parentheses and brackets, i.e. $(2+3)[4+4]$. Use escape char ```\{``` and ```\}``` for curly braces ```{}```.

**Notation** | **Output**
:--- | ---
```(x)``` | $(x)$
```[x]``` | $[x]$
```\{x\}``` | $\{x\}$
```|x|``` | $\vert x \vert$
```||x||``` |  $\Vert x \Vert$
```$\vert x \vert$``` | $\vert x \vert$
```$\Vert x \Vert$``` |  $\Vert x \Vert$
```\langle x \rangle``` | $\langle x \rangle$
```\lceil x \rceil``` | $\lceil x \rceil$
```\lfloor x \rfloor``` | $\lfloor x \rfloor$

There are different sizes of parentheses

=== "Output"
    $$
    \Biggl(\biggl(\Bigl(\bigl((x)\bigr)\Bigr)\biggr)\Biggr)
    $$
=== "Markdown"
    ```
    $$
    \Biggl(\biggl(\Bigl(\bigl((x)\bigr)\Bigr)\biggr)\Biggr)
    $$
    ```

!!! hint 
    Use ```\left(``` and ```\right)``` notations in formulas instead of ```(``` and ```)``` respectively.

Symbols like ```(``` will make small parentheses, which are not suitable for fractions. 
For example, in case of ```(\frac{\sqrt x}{y^3})``` the output is: 

=== "Output"
    $$
    (\frac{\sqrt x}{y^3})
    $$
=== "Markdown"
    ```
    $$
    (\frac{\sqrt x}{y^3})
    $$
    ```

But if you use ```\left(``` and ```\right)``` notations instead, you will get

=== "Output"
    $$
    \left(\frac{\sqrt x}{y^3}\right)
    $$
=== "Markdown"
    ```
    $$
    \left(\frac{\sqrt x}{y^3}\right)
    $$
    ```

Combine fractions, operators and parentheses:

=== "Output"
    $$
    \left(\frac{\left(\sqrt{\frac{73^2}{12x}}\sqrt{\frac{x|x|}{\log_x}}\right)}{\sqrt[3]{\frac xy}}\right)
    $$
=== "Markdown"
    ```
    $$
    \left(\frac{\left(\sqrt{\frac{73^2}{12x}}\sqrt{\frac{x|x|}{\log_x}}\right)}{\sqrt[3]{\frac xy}}\right)
    $$
    ```

## System of equations, formulas and functions 

Use cases to create systems of equations or functions definitions by cases (piecewise functions).

=== "Output"
    $$
    f(n) =
    \begin{cases}
    n/2,  & \text{if $n$ is even} \\
    3n+1, & \text{if $n$ is odd}
    \end{cases}
    $$

=== "Markdown"
    ```
    $$
    f(n) =
    \begin{cases}
    n/2,  & \text{if $n$ is even} \\
    3n+1, & \text{if $n$ is odd}
    \end{cases}
    $$
    ```
Aligned systems of formulas using ```\begin{align}``` and ```\end{align}```

=== "Output"
    $$
    \begin{align}
    \nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}} \\   \nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\
    \nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\
    \nabla \cdot \vec{\mathbf{B}} & = 0
    \end{align}
    $$
=== "Markdown"
    ```
    $$
    \begin{align}
    \nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}} \\   \nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\
    \nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\
    \nabla \cdot \vec{\mathbf{B}} & = 0
    \end{align}
    $$
    ```
In order to create system of quations use ```\begin{array}```, ```\end{array}``` together with ```\left\{``` and ```\right```
=== "Output"
    $$
    \left\{ 
    \begin{array}{c}
    a_1x+b_1y+c_1z=d_1 \\ 
    a_2x+b_2y+c_2z=d_2 \\ 
    a_3x+b_3y+c_3z=d_3
    \end{array}
    \right. 
    $$
=== "Markdown"
    ```
    $$
    \left\{ 
    \begin{array}{c}
    a_1x+b_1y+c_1z=d_1 \\ 
    a_2x+b_2y+c_2z=d_2 \\ 
    a_3x+b_3y+c_3z=d_3
    \end{array}
    \right. 
    $$
    ```


!!! example "System of equations"
    === "Output"
        --8<-- "docs/tutorials/markdown/snippets/mathjax-system-equations.md"
    === "Markdown"
        ```
        --8<-- "docs/tutorials/markdown/snippets/mathjax-system-equations.md"
        ```


## Matrices

In order to create matrixes use ```$$\begin{matrix}…\end{matrix}$$```, 
in between the ```\begin``` and ```\end```, put the matrix elements. 
End each matrix row with ```\\```, and separate matrix elements with ```&```

=== "Output"
    $$
    \begin{matrix}
    1 & x & x^2 \\
    1 & y & y^2 \\
    1 & z & z^2 \\
    \end{matrix}
    $$
=== "Markdown"
    ```
    $$
    \begin{matrix}
    1 & x & x^2 \\
    1 & y & y^2 \\
    1 & z & z^2 \\
    \end{matrix}
    $$
    ```
!!! example "Advanced matrix notations"
    === "Output"
        --8<-- "docs/tutorials/markdown/snippets/mathjax-matrices.md"
    === "Markdown"
        ```
        --8<-- "docs/tutorials/markdown/snippets/mathjax-matrices.md"
        ```

    