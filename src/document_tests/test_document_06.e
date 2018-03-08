note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_DOCUMENT_06

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			-- Initializie our exception asserter
				create exception_asserter
		end

feature -- Test routines
	exception_asserter : EXCEPTION_ASSERTER
	test_document_make06
			-- New test routine
		note
			testing:  "covers/{DOCUMENT}.make"
		local
				document :DOCUMENT
				has_exception:BOOLEAN
			do
				if not has_exception then

				create document.make ("in this test we want to show that preconditions are violated if the input inputs five hundreds character count input is exceeded. For trying purposes, I am trying to write a long sentence so we can prove that our implemented library works as we meant to and expected, if this is not the case, we need to revise our implemetation and correct it so it runs as desired. I ran out of stuff to write, five hundred characters are too many characters. So let us write some gibberish hereeeeeeeeeeeeeeeeeeeee.","in this test we want to show that preconditions are violated if the input inputs five hundreds character count input is exceeded. For trying purposes, I am trying to write a long sentence so we can prove that our implemented library works as we meant to and expected, if this is not the case, we need to revise our implemetation and correct it so it runs as desired. I ran out of stuff to write, five hundred characters are too many characters. So let us write some gibberish hereeeeeeeeeeeeeeeeeeeee.")
				assert ("test30", False)
				end
			rescue
				print ("Is the input longer than 500? %N")
						print (exception_asserter.is_precondition_violated)
						assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
						has_exception := True
						retry
			end


end


