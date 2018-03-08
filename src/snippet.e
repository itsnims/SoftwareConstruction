class
	SNIPPET

inherit
    FILE_COMPOSITE

create
	make

feature
	input:STRING
	id:STRING
	is_empty: BOOLEAN
	usercopy:STRING

	make(user:STRING)
	require
		user.count > 0
		user.count<=500
	do
		input:=user
		create usercopy.make_empty
		usercopy.copy (user)
		usercopy.replace_substring_all (" ", "_")
		id:= usercopy

	end

	accept(a_visitor:VISITOR):STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_snippet (Current)
		RESULT:= str
	end
end
