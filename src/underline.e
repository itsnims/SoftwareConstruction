class
	UNDERLINE

inherit
	PARAGRAPH_COMPOSITE

create
	add_underline

feature
	under:STRING
	is_empty: BOOLEAN

	add_underline(text:STRING)
	require
		text.count>0
		text.count<=500
	do
		under:=text
	end

	get_underline:STRING
	require
		under.count>0
		under.count<=500
	do
		Result:=under
	end

	accept(a_visitor:VISITOR):STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_underline (Current)
		RESULT:= str
	end
end
