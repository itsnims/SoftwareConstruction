class
	EL_ROW

inherit
    ROW_CONT

create
	make

feature {ANY}
	el_row: LINKED_LIST[FILE_COMPOSITE]

	make
	-- initialize the inner list containing all our items
	do
		create el_row.make
	ensure
	    el_row.count=0
	end


	add_row_el ( elem : FILE_COMPOSITE)
	-- Add a new element
	do
		el_row.put_right(elem)
		el_row.forth
	ensure
		elem = el_row.last
	end

	accept(a_visitor:VISITOR):STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_elrow (Current)
		RESULT:= str
	end
end


