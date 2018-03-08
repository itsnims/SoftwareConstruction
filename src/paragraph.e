class
	PARAGRAPH

inherit
	PARAGRAPH_COMPOSITE

create
	make

feature
	paragraph:LINKED_LIST[PARAGRAPH_COMPOSITE]

	make
	do
		create paragraph.make
	ensure
		paragraph.count=0
	end

	add_text(texts:PARAGRAPH_COMPOSITE)
	do
		paragraph.extend(texts)
	ensure
		texts = paragraph.last
	end

	accept(a_visitor:VISITOR):STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_paragraph (Current)
		RESULT:= str
	end
end
