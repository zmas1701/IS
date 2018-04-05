(deftemplate Problem 
                     (slot signal)
                     (slot print)
					 
)

(defrule var1
   (declare (salience 800))
   
   =>
   (printout t "got a signal?? (yellow/red/no) : ")
   (bind ?response (read))
   (assert (Problem (signal ?response))))
   
(defrule var2
   (declare (salience 700))
   
   =>
   (printout t "Print? (yes/no/black/white) : ")
   (bind ?response (read))
   (assert (Problem (print ?response))))
   
(defrule PlugIntoSocket
        (Problem (signal no))
        (Problem (print no))
       
=> (printout t PlugIntoSocket crlf)
)

(defrule FillTheCartridge
        (Problem (signal red))
        (Problem (print no))
        
=> (printout t FillTheCartridge crlf)
)

(defrule BrokenCartridge
        (Problem (signal yellow))
		(or
        (Problem (print no))
		(Problem (print black))
		(Problem (print white))
		
		)
		
        
=> (printout t BrokenCartridge crlf)
)