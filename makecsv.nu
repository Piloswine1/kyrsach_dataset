ls ./storage_prev/
	| each {|it| open $it.name
		| update reviewText {|entry| $entry.reviewText | str replace -a '\n|\.|,' '' }
		| to csv -n
		| save --append dataset.csv
	}

