function di=epidemicm(t,i,lambda,sigma)
di=-lambda .*i .*(i-(1-1./sigma));