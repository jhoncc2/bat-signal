processing
processStupidData: d
	| i j a tmp |
	i := 1.
	tmp := (1 to: (d size/3)) collect: [ :aa |
		j := i.
		i := i + 3.
		"a := $ split: (d at: j+2)."
		(d at: j+1) -> (d at: j).
	].
	data addAll: tmp.
	"self persistData: data."
	^ data

	