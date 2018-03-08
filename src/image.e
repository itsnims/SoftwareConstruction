class
	IMAGE

inherit
	FILE_COMPOSITE

create
	picture

feature
    picval: STRING
    description: STRING
    is_empty: BOOLEAN

    picture(text: STRING; desc:STRING)
    require
      	text.count >0
      	desc.count >0
      	text.count<=500
      	desc.count<=500
    do
        picval:=text
        description:=desc
    end

    --the page title input
    get_picture: STRING
    require
    	picval.count >0
    	picval.count<=500
    do
    	RESULT:= picval
    end

    get_description:STRING
    require
    	description.count >0
    	description.count<=500
    do
    	RESULT:= description
    end

    accept(a_visitor:VISITOR): STRING
	local
	str:STRING
	do
		str:=a_visitor.visit_image (Current)
		RESULT:= str
	end
end
