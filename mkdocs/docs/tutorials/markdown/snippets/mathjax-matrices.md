To add brackets use ```{pmatrix}```, ```{bmatrix}```, ```{Bmatrix}```, ```{vmatrix}```.

With ```{pmatrix}```

$$
    \begin{pmatrix}
    1 & x & x^2 \\
    1 & y & y^2 \\
    1 & z & z^2 \\
    \end{pmatrix}
$$  

With ```{bmatrix}```

$$
    \begin{bmatrix}
    1 & x & x^2 \\
    1 & y & y^2 \\
    1 & z & z^2 \\
    \end{bmatrix}
$$ 

With ```{Bmatrix}```

$$
    \begin{Bmatrix}
    1 & x & x^2 \\
    1 & y & y^2 \\
    1 & z & z^2 \\
    \end{Bmatrix}
$$  

With ```{Vmatrix}```

$$
    \begin{vmatrix}
    1 & x & x^2 \\
    1 & y & y^2 \\
    1 & z & z^2 \\
    \end{vmatrix}
$$ 

With vertical line

$$ 
\left[
\begin{array}{cc|c}
1&2&3\\
4&5&6
\end{array}
\right] 
$$

With horizontal line

$$
\begin{pmatrix}
    a & b\\
    c & d\\
\hline
    1 & 0\\
    0 & 1
\end{pmatrix}
$$

Use ```\cdots``` for **⋯**, ```\ddots``` for **⋱** and ```\vdots``` for **⋮** when you want to omit some of the entries:

$$
    \begin{vmatrix}
    1 & x & \cdots & x^2 \\
    1 & y & \cdots & y^2 \\
    \vdots & \vdots & \ddots & \vdots \\
    1 & z & \cdots & z^2 \\
    \end{vmatrix}
$$ 