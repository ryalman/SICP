;Consider we have n actions and we wanna select one of them randomly and then run it.
;Consider a procedure that creates lambdas and push those lambdas to our action store
;Now consider those lambda actions shares some multiple resources. Since we can not 
;know which actions use which resources, we can not provide a locking mechnasim.
;Say we know the shared resources, but we can not lock them in advance since we do not
;know which lambda function uses which of them.
