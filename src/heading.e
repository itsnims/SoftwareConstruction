class
	HEADING

inherit
	FILE_COMPOSITE

create
	make

feature
	size: STRING
	heading: STRING
	is_empty: BOOLEAN
	id:STRING
	wordscopy:STRING


make(words:STRING;number:INTEGER)
	require
		words.count > 0
		words.count<=500

		number > 0
		number<=6
	do
		size:= number.out
		heading:=words
		create wordscopy.make_empty
		wordscopy.copy (words)
		wordscopy.replace_substring_all (" ","_")
		id:= wordscopy
	end


	accept(a_visitor:VISITOR):STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_heading (Current)
		RESULT:= str
	end
end
