processing
immediateExpertiseMethods
	^ {
		#exp_method ->  [:expProv :code | expProv expertsForMethodName: code].
		#exp_class ->  [:expProv :code | expProv expertsForClassName: code].
		#exp_package ->  [:expProv :code | expProv expertsForPackageName: code].
		"#fallback_exp ->  [expertiseProv expertsForPackageName: queryDescriptor codeElement]."
	}