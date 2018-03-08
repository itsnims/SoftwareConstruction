class
	EXTERNAL_LINK

inherit
    FILE_COMPOSITE

create
	adress

feature
	e_link:STRING
	text: STRING
	is_empty: BOOLEAN

	adress(link:STRING;words:STRING)
	require
	    link.count >0
	    words.count >0
	    link.count<=500
	    words.count<=500
	do
		e_link:=link
		text:=words
	end

	get_elink:STRING
	require
	    e_link.count >0
	    e_link.count<=500
	do
		Result:= e_link
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
		str:=a_visitor.visit_elink (Current)
		RESULT:= str
	end
end
