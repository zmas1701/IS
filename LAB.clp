(deftemplate DVD 
		(slot HiTSound)
		(slot VidEnch)
		(slot BlueRay)
		(slot VidOut)
		(slot USB)
		(slot Record)
)
(defrule SOUND
   =>
		(printout t "Does it have Hi-tech sound yes/no?: ")
		(bind ?response (read))
		(assert (DVD (HiTSound ?response)))
)
(defrule VIDEOENCHANSER
   =>
		(printout t "Does it have video enhancer yes/no?: ")
		(bind ?response (read))
		(assert (DVD (VidEnch ?response)))
)
(defrule BLUERAY
   =>
		(printout t "Does it have BlueRay yes/no?: ")
		(bind ?response (read))
		(assert (DVD (BlueRay ?response)))
)
(defrule VIDEOOUTPUT
   =>
		(printout t "Which video output is used SVIDEO/HDMI?: ")
		(bind ?response (read))
		(assert (DVD (VidOut ?response)))
)
(defrule USB
   =>
		(printout t "Does it have USB yes/no?: ")
		(bind ?response (read))
		(assert (DVD (USB ?response)))
)
(defrule RECORD
   =>
		(printout t "Does it have Record option yes/no?: ")
		(bind ?response (read))
		(assert (DVD (Record ?response)))
)

(defrule DVD1
		(DVD(HiTSound yes))
		(DVD(VidEnch yes))
		(DVD(BlueRay yes))
		(DVD(VidOut HDMI))
		(DVD(USB yes))
		(DVD(Record yes))
	=>
		(printout t "Its a DVD1" crlf)
)
(defrule DVD2
		(DVD (HiTSound no))
		(DVD(VidEnch yes))
		(DVD(BlueRay no))
		(DVD(VidOut HDMI))
		(DVD(USB yes))
		(DVD(Record yes))
	=>
		(printout t "Its a DVD2" crlf)
)
(defrule DVD3
		(DVD(HiTSound yes))
		(DVD(VidEnch yes))
		(DVD(BlueRay yes))
		(DVD(VidOut HDMI))
		(DVD(USB yes))
		(DVD(Record no))
	=>
		(printout t "Its a DVD3" crlf)
)
(defrule DVD4
		(DVD(HiTSound no))
		(DVD(VidEnch no))
		(DVD(BlueRay no))
		(DVD(VidOut SVIDEO))
		(DVD(USB yes))
		(DVD(Record yes))
	=>
		(printout t "Its a DVD4" crlf)
)
(defrule DVD5
		(DVD(HiTSound no))
		(DVD(VidEnch no))
		(DVD(BlueRay no))
		(DVD(VidOut SVIDEO))
		(DVD(USB yes))
		(DVD(Record no))
	=>
		(printout t "Its a DVD5" crlf)
)