# numerical_analysis_methods(MATLAB_implementation)
Implementation of famous numerical analysis methods ( bisection , False Position , Newton Raphson , jacobi , lagrange interpolation , newton divided difference interpolation ) using MATLAB
1) Bisection Method:
* used to to find the roots of the given equation by repeatedly dividing the interval.
* f ===> function handle.       a & b ===> initial guesses.
2) False Position Method:
* it is an iterative method of finding the roots of a non-linear equation of the form f(x) = 0.
* f ===> function handle.       a & b ===> initial guesses.
3) Newton Raphson Method:
* used to to find the roots of the given equation
* f ===> function handle.       x0 ===> initial guess.        fd ===> function handle for the derivative of the function.
4) Jacobi method:
* it is is considered as an iterative algorithm which is used for determining the solutions for the system of linear equations.
* a ===> coefficients matrix        b ===> absolute values matrix       x0 ===> initial guess matrix(vector)
5) lagrange interpolation method:
* it is used to generate a polynomial that passes over a group of points (Interpolation).
* x ===> x coordinates of given points        y ===> y coordinates of given points       z ===> x coordinate value needed to be estimated after interpolation
6) Newton's divided differences interpolation method:
* it is used for  fitting an nth-order polynomial that passes through n+1 data points (Interpolation).
* x ===> x coordinates of given points        y ===> y coordinates of given points       z ===> x coordinate value needed to be estimated after interpolation
