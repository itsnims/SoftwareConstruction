note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IMAGE01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_image_picture01
			-- New test routine
    	note
			testing:  "covers/{IMAGE}.picture"
		local
			ima: IMAGE
		do
			create ima.picture("pic.jpg","description")

			assert ("test74_implemented", True)
		end

end


