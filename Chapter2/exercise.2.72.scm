;For every symbol we need to traverse the tree down to a leaf so that
;for the most frequent symbol we might only need O(1) and for the
;least frequent symbol we might need O(h) where h is the alpahet length
;Since a random message would contain the most frequent symbol more than
;others, the average traversal will be smaller, say log2(h)
;We also need to check the symbols on each node. Assuming we used an ordered
;set we can do this in O(log2(n))
;Since we need to repeat this process for every symbol in the message,
;it will be O(nlog2(h))
;
;I am also aware of that online solution says n^2 or 2^n runtimes
;but I am pretty sure that it is not 2^n, if it were so, we could not 
;encode any message except the very short ones.
