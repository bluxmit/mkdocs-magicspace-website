Alternative way to produce system of equations

$$
\begin{cases}
a_1x+b_1y+c_1z=d_1 \\ 
a_2x+b_2y+c_2z=d_2 \\ 
a_3x+b_3y+c_3z=d_3
\end{cases}
$$

To align the ```=``` signs use ```\begin{aligned}``` and ```\end{aligned}``` together with ```\left\{``` and ```\right```

$$
\left\{
\begin{aligned} 
a_1x+b_1y+c_1z &=d_1+e_1 \\ 
a_2x+b_2y&=d_2 \\ 
a_3x+b_3y+c_3z &=d_3 
\end{aligned} 
\right. 
$$

Use ```\begin{array}{ll}``` to align everything left

$$
\left\{
\begin{array}{ll}
a_1x+b_1y+c_1z &=d_1+e_1 \\ 
a_2x+b_2y &=d_2 \\ 
a_3x+b_3y+c_3z &=d_3 
\end{array} 
\right.
$$

Use ```\\[2ex]``` to create larger vertical spaces between equations

$$
\begin{cases}
a_1x+b_1y+c_1z=\frac{p_1}{q_1} \\[2ex] 
a_2x+b_2y+c_2z=\frac{p_2}{q_2} \\[2ex] 
a_3x+b_3y+c_3z=\frac{p_3}{q_3}
\end{cases}
$$
