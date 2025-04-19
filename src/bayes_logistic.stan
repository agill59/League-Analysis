data {
  int<lower=0> N;             // number of data points
  int<lower=0> K;             // number of predictors
  matrix[N, K] X;             // predictor matrix
  int<lower=0,upper=1> y[N];  // binary outcome
}
parameters {
  vector[K] beta;             // coefficients
}
model {
  beta ~ normal(0, 1);   // standard normal prior
  y ~ bernoulli_logit(X * beta); // likelihood
}
