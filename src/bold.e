class
	BOLD

inherit
	PARAGRAPH_COMPOSITE

create
	add_bold

feature
	bold:STRING
	is_empty: BOOLEAN

	add_bold(text:STRING)
	require
	    text.count >0
	    text.count<=500
	do
		bold:=text
	end

	get_bold:STRING
	require
	    bold.count > 0
	    bold.count<=500
	do
		Result:=bold
	end

	accept(a_visitor:VISITOR):STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_bold (Current)
		RESULT:= str

	end
end
