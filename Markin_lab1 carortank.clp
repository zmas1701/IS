(deftemplate Carortank
        (slot topdoor)
		(slot gun)
        (slot door)
		(slot weels)
		(slot vagon)
)

(defrule tank
        (Carortank (topdoor yes))
        (Carortank (gun yes))
        (Carortank (door no))
		(Carortank (weels no))
		(Carortank (vagon yes))
=> (printout t tank crlf)
)

(defrule car
        (Carortank (topdoor no))
        (Carortank (gun no))
        (Carortank (door yes))
		(Carortank (weels yes))
		(Carortank (vagon yes))
=> (printout t car crlf)
)



(deffacts Allfacts
        (Carortank (topdoor no))
        (Carortank (gun no))
        (Carortank (door yes))
		(Carortank (weels yes))
		(Carortank (vagon yes))
)
