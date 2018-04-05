(deffacts Facts
(Call_to_beeline 100)
(Call_to_others 300)
(SMS 50)
(Internet 20)
(Bezlimit VK)
)


(defrule socseti
(priority first)
(or(Bezlimit FB)
(Bezlimit VK))
=> 
(printout t "Ti lubish poobshatsya s druziami v internete!!" crlf)	
)

(defrule internet
(priority first)
(Internet ?Internet)
=> 
(if (> ?Internet 10)  			
then		
(printout t "Ti mnogo provodish v internete!!" crlf)	
))


(defrule calls
(priority first)
(Call_to_beeline ?Call_to_beeline)
(Call_to_others ?Call_to_others)
=> 
(if (and(> ?Call_to_beeline 100) (> ?Call_to_others 100))  			
then		
(printout t "Ti lubish poboltat'!!" crlf)	
))



(defrule 1_dlya_obsheniya 
(priority second)
(Call_to_beeline ?Call_to_beeline)
(Call_to_others ?Call_to_others)
=> 
(if (and(> ?Call_to_beeline 300) (> ?Call_to_others 300))  			
then		
(printout t "Tebe podhodit tarif - 1 dlya obsheniya" crlf)	
))



(defrule obshisya_mini
(priority second)
(Call_to_beeline ?Call_to_beeline)
(Call_to_others ?Call_to_others)
=> 
(if (and(<= ?Call_to_beeline 300) (<= ?Call_to_others 300))  			
then		
(printout t "Tebe podhodit tarif - obshisya_mini" crlf)	
))



(defrule Internet_dlya_tebya
(priority second)
(Internet ?Internet)
=>
(if
(and(<= ?Internet 50) (>= ?Internet 10))
then		
(printout t "Tebe podhodit tarif - Internet_dlya_tebya" crlf)	
))

(defrule Internet_maxi
(priority second)
(Internet ?Internet)
(not(Bezlimit))
=>
(if
(> ?Internet 50)
then		
(printout t "Tebe podhodit tarif - Internet_maxi" crlf)	
))



(defrule Internet_maxi_VK
(priority second)
(Internet ?Internet)
(Bezlimit VK)
=>
(if
(> ?Internet 50)
then		
(printout t "Tebe podhodit tarif - Internet_maxi + VK" crlf)	
))


(defrule Internet_maxi_FB
(priority second)
(Internet ?Internet)
(Bezlimit FB)
=>
(if
(> ?Internet 50)
then		
(printout t "Tebe podhodit tarif - Internet_maxi + FB" crlf)	
))
