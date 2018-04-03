(deffacts Work-facts
(education yes)
(exp 2)
(degree no)
)

(defrule education_no
(education no)
=>
(printout t "not accepted" crlf)	
)) 

(defrule exp_no
(exp ?exp)
=>
(if (< ?exp 1)  			
then
(printout t "not accepted" crlf)	
)) 

(defrule accept_researcher
(education yes)
(degree yes) 
(exp ?exp)
=>
(if (> ?exp 1)  			
then
(printout t "accepted researcher" crlf)	
))

(defrule accept_engineer
(education yes)
(degree no) 
(exp ?exp)
=>
(if (> ?exp 1)  			
then
(printout t "accepted engineer" crlf)	
))


