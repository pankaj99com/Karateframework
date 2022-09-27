function fn() { 
var env = karate.env; // get system property 'karate.env' karate.log('karate.env system property was:', env); 
if (!env) { 
env = 'dev'; 
} 

var config = { 
env: env, 
myVarName: 'hello karate', 
baseUrl: 'https://gorest.co.in',
tokenId: '9de01ea61c8f0699101e1a25aa30ca48dfba1c59e81c970b7577bc461c3854fc',
}

if (env == 'dev') { 
// customize 
// e.g. config.foo = 'bar'; 
} else if (env == 'e2e') { 
// customize 
} 
return config; 
}