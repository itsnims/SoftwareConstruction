note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IMAGE13

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			expectedString := "description"
			create ima.picture("pic.jpg",expectedString)
		end

feature -- Test routines

	test_image_get_description01
			-- New test routine
		note
			testing:  "covers/{IMAGE}.get_description"
		local
			actualString: STRING
		do
			actualString := ima.get_description
			assert ("test86_implemented", actualString.same_string (expectedString))
		end
feature --Initialize
	ima: IMAGE
	expectedString : STRING

end





