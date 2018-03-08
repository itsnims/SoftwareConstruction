class
	TABLEE

inherit
	ROW_CONT

create
	make

feature
	el_col: LINKED_LIST[ROW_CONT]

	make
	-- initialize the inner list containing all our items
	do
		create el_col.make
    ensure
    	el_col.count=0
	end

	add_col ( eleme : ROW_CONT)
	-- Add a new element
	do
        el_col.put_right(eleme)
		el_col.forth
	ensure
		eleme = el_col.last
	end

	accept(a_visitor:VISITOR):STRING
	local
	str: STRING
	do
		str:=a_visitor.visit_tablee (Current)
		RESULT:= str
	end
end
