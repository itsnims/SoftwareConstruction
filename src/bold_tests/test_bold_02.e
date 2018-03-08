note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_BOLD_02
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

	test_bold_add_bold02
			-- New test routine
		note
			testing:  "covers/{BOLD}.add_bold"
		local
			bolded : BOLD
			has_exception: BOOLEAN
		do
			if not has_exception then

			create bolded.add_bold ("")
			assert ("test19", false)
			end
		rescue
			print("Is the input empty? %N")
					print(exception_asserter.is_precondition_violated)

					assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
					has_exception := True
					retry
		end

end


