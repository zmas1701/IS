(deffacts Facts
(Type SLR)
(Price 11000)
(Pixels 10)
(Zoom 50)
(Lens yes)
(Screen yes)
(Watertightness yes)
)

(defrule 1_Sony_DSCHX80 
(Price ?Price)
(Screen yes)
(or(Pixels 14)
(Pixels 18))
(Type compact)
=> 
(if (< ?Price 23000)  			
then		
(printout t "Your choice Sony DSCHX80 . Good shopping" crlf)	
))


(defrule 2_Panasonic_DMCFZ100
(Screen yes)
(Pixels ?pix)
(Price ?Price)
=>
(if
(and(<= ?pix 14) (<= ?Price 20000))
then		
(printout t "Your choice Panasonic DMCFZ100. Good shopping" crlf)	
))

(defrule 3_Canon_SX520
(Lens no)
(Type compact)
(Screen no)
(Watertightness yes)
(not(Type))
=>		
then		
(printout t "Your choice Canon_SX520. Good shopping" crlf)	
)


(defrule 4_Samsung_WB50F
(Price ?Price)
(Type compact)
=> 
(if (< ?Price 10000)  			
then		
(printout t "Your choice Samsung WB50F. Good shopping" crlf)	
))

(defrule 5_Nikon_B700
(Zoom ?Zoom)
(Lens no)
(Screen yes)
(Watertightness yes)
=>
(if (> ?Zoom 50)
then
(printout t "Your choice Nikon B700. Good shopping" crlf)	
))



(defrule 6_Pentax_KP
(Lens no)
(Price ?Price)
(Type SLR)
(Pixels 24)
=> 
(if (> ?Price 50000)  	
then
(printout t "Your choice Pentax KP. Good shopping" crlf))
)

(defrule 7_Sony_ILCA68
(not (Zoom))
(Type SLR)
(Pixels 24)
(Price ?Price)
=> 
(if (< ?Price 40000)  	
then
(printout t "Your choice Sony ILCA68. Good shopping" crlf))
)


(defrule 8_Olympus_E420
(Lens yes)
(Price ?Price)
(Type SLR)
=> 
(if (> ?Price 20000)  	
then
(printout t "Your choice OlympusE420. Good shopping" crlf))
)



(defrule 9_Nikon_D5200
(Lens yes)
(Price ?Price)
(Type SLR)
=> 
(if (> ?Price 20000)  	
then
(printout t "Your choice Nikon D5200. Good shopping" crlf))
)



(defrule 10_Canon_1300D
(Screen yes)
(Type SLR)
(Price ?Price)
(Pixels ?Pix)
=> 
(if 
(and(< ?Price 20000) (>= ?Pix 30))
then
(printout t "Your choice Canon_1300D. Good shopping" crlf)))
