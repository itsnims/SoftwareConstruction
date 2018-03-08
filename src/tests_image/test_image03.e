note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IMAGE03

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE}

	on_prepare
		do
			create exception_asserter
		end

feature -- Test routines

    exception_asserter: EXCEPTION_ASSERTER

	test_image_picture03
			-- New test routine
    	note
			testing:  "covers/{IMAGE}.picture"
		local
			ima: IMAGE
	has_exception: BOOLEAN
			do
				if not has_exception then
			create ima.picture("","")

			assert ("test76_implemented", false)
		end
		rescue
				print ("Is the input empty? %N")
				print (exception_asserter.is_precondition_violated)
				assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
				has_exception := True
				retry
			end

end


