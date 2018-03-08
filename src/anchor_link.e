class
	ANCHOR_LINK

inherit
	FILE_COMPOSITE

create
	make

feature
	a_link: STRING
	text: STRING
	is_empty:BOOLEAN

	make (link:STRING;sentence:STRING)
	require
	    link.count >0
	    sentence.count >0
	    link.count<=500
	    sentence.count<=500
	do
		link.replace_substring_all (" ","_")
		a_link:=link
		text:=sentence
	end

	get_alink:STRING
	require
		a_link.count >0
		a_link.count<=500
	do
		Result:= a_link
	end

	get_text:STRING
	require
	    text.count >0
	    text.count<=500
	do
		Result:=text
	end

	accept(a_visitor:VISITOR):STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_alink (Current)
		RESULT:= str
	end
end
