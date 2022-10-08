x <- c(4,3,5,78,23,6,8,4,8)
> x
[1]  4  3  5 78 23  6  8  4  8
> x <- c(4,3,5,78,23,"Hello")
> x
[1] "4"     "3"     "5"     "78"    "23"    "Hello"
> x <- c(4,3,5,78,23,45.6)
> x
[1]  4.0  3.0  5.0 78.0 23.0 45.6
> x <- c(4,3,5,78,23,TRUE)
> x
[1]  4  3  5 78 23  1
> assign("x", c(3,2,5,6,2,16))
> x
[1]  3  2  5  6  2 16
> x <- seq(1,10)
> x
[1]  1  2  3  4  5  6  7  8  9 10
> x <- seq(2,21,2)
> x
[1]  2  4  6  8 10 12 14 16 18 20
> x <- seq(2,21,by=2)
> x
[1]  2  4  6  8 10 12 14 16 18 20
> rep((1,2,3),3)
Error: unexpected ',' in "rep((1,"
> x <- c(4,2,5)
> rep(x,4)
[1] 4 2 5 4 2 5 4 2 5 4 2 5
> rep(x,each=4)
[1] 4 4 4 4 2 2 2 2 5 5 5 5
> vector(mode="x")
Error in vector(mode = "x") : vector: cannot make a vector of mode 'x'.
> vector(mode="integer")
integer(0)
> vector(mode="integer", length=5)
[1] 0 0 0 0 0
> vector(mode="logical", length=5)
[1] FALSE FALSE FALSE FALSE FALSE
> vector(mode="character", length=5)
[1] "" "" "" "" ""
> vector(mode="complex", length=5)
[1] 0+0i 0+0i 0+0i 0+0i 0+0i