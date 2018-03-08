class
	DOCUMENT

create
   make

feature
	path:STRING
	pagetitle:STRING
	is_empty: BOOLEAN
	doc : LINKED_LIST[FILE_COMPOSITE]
	-- the elements of the doc

	make(name:STRING;title:STRING)
	-- initialize the array containing all our elem
	require
		name.count >0
		title.count >0
		name.count<=500
		title.count<=500
	do
		create doc.make
		path:=name
		pagetitle := title
	end

	get_name:STRING
	require
		path.count >0
		path.count<=500
	do
		Result:=path
	end

	get_pagetitle:STRING
	require
	    pagetitle.count >0
	    pagetitle.count<=500
	do
		Result:=pagetitle
	end

	add_element ( element : FILE_COMPOSITE)
	-- Add a new element
	do
		doc.put_right(element)
		doc.forth
	ensure
	    element= doc.last
	end

	accept(a_visitor:VISITOR):STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_document (Current)
		RESULT:= str
	end
end
