processing
immediateExpertiseMethods
	^ {
		#exp_method ->  [:expProv :code | expProv expertsForMethodName: code name].
		#exp_class ->  [:expProv :code | expProv expertsForClassName: code name].
		#exp_package ->  [:expProv :code | expProv expertsForPackageName: code name].
		#hierarchy_method ->  [:expProv :code | (BTHierarchy instance processMethod: code) collect: #key].
		#hierarchy_class ->  [:expProv :code | (BTHierarchy instance processClass: code) collect: #key].
		#hierarchy_package ->  [:expProv :code | (BTHierarchy instance processPackage: code) collect: #key].
		"#fallback_exp ->  [expertiseProv expertsForPackageName: queryDescriptor codeElement]."
	}