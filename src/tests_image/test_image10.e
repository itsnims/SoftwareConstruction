note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IMAGE10

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			expectedString := "pic.jpg"
			create ima.picture(expectedString, "description")
		end

feature -- Test routines

	test_image_get_picture01
			-- New test routine
		note
			testing:  "covers/{IMAGE}.get_picture"
		local
			actualString: STRING
		do
			actualString := ima.get_picture
			assert ("test83_implemented", actualString.same_string (expectedString))
		end
feature --Initialize
	ima: IMAGE
	expectedString : STRING

end
