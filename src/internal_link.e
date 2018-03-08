class
	INTERNAL_LINK

inherit
	FILE_COMPOSITE

create
	make

feature
	i_link:STRING
	text:STRING
	is_empty: BOOLEAN

	make(words:STRING;page:DOCUMENT)
	require
		words.count >0
		page.get_name.count > 0
		words.count<=500
	do
		i_link:=page.get_name
		text:=words
	end

	get_ilink:STRING
	require
		i_link.count >0
	do
		Result:= i_link
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
		str:=a_visitor.visit_ilink (Current)
		RESULT:= str
	end
end
