class
	ITALICS

inherit
	PARAGRAPH_COMPOSITE

create
	add_italics

feature
	italics:STRING
	is_empty: BOOLEAN

	add_italics(text:STRING)
	require
		text.count >0
		text.count<=500
	do
		italics:=text
	end

	get_italics:STRING
	require
		italics.count >0
		italics.count<=500
	do
		Result:=italics
	end

	accept(a_visitor:VISITOR):STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_italics (Current)
		RESULT:= str

	end
end
