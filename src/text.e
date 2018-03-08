class
	TEXT

inherit
	PARAGRAPH_COMPOSITE

create
	add_text

feature
	normal:STRING
	is_empty: BOOLEAN

	add_text(text:STRING)
	require
		text.count > 0
		text.count<=500
	do
		normal:=text
	end

	get_normal:STRING
	require
		normal.count >0
		normal.count<=500
	do
		Result:=normal
	end

	accept(a_visitor:VISITOR):STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_normal (Current)
		RESULT:= str
	end
end
