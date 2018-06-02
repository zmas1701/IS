(deftemplate televison
        (slot fuse_burned (default no))
		(slot power_cable_demage (default no))
		(slot understand_electronics (default no))
)

(deffacts check_televison 
	(televison (fuse_burned no)) 
	(televison (power_cable_demage no))
	(televison (understand_electronics no))
)

(defrule Change_fuse
	(televison (fuse_burned yes))
	(televison (power_cable_demage no))
	(televison (understand_electronics no))
=> (printout "Change Fuse")
)


(defrule Change_cable
	(televison (fuse_burned no))
	(televison (power_cable_demage yes))
	(televison (understand_electronics no))
=> (printout "Change Cable")
)


(defrule Repair
	(televison (fuse_burned no))
	(televison (power_cable_demage no))
	(televison (understand_electronics yes))
=> (printout "Repair television")
)

(defrule Call_master
	(televison (fuse_burned no))
	(televison (power_cable_demage no))
	(televison (understand_electronics no))
=> (printout "A challenge to master")
)