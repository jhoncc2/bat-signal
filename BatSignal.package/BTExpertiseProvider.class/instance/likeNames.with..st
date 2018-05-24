processing
likeNames: c with: d
	|a b|
	a := c reject: [ :ch | ch = Character space].
	b := d reject: [ :ch | ch = Character space].
	^ (((a alike: b) / (a size + b size)) > 0.4).
		