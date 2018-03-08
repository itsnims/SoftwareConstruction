class
	UNORDERED_LIST

inherit
	FILE_COMPOSITE

create
	make

feature { ANY }
	elements: LINKED_LIST[FILE_COMPOSITE]

	make
	-- initialize the inner list containing all our items
	do
		create elements.make
	ensure
		elements.count=0
	end

	add_point ( element : FILE_COMPOSITE)
	-- Add a new element
	do
		elements.put_right(element)
		elements.forth
	ensure
		element = elements.last
	end

	accept(a_visitor:VISITOR):STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_unorderedlist (Current)
		RESULT:= str
	end
end
