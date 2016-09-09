makedata.bc = function(lambda.x = 1, lambda.y = 1, a = 0, x.max = 5, n = 200, sigma = 1, seed = NULL){
 set.seed(seed)
 x = log.def(seq(from = 1, to = x.max, length.out = n), lambda = lambda.x)
 y = exp.def(x + a + rnorm(n, sd = sigma), lambda = lambda.y)
 return(data.frame(x = x, y = y))
}