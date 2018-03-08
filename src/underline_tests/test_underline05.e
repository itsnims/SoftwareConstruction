note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_UNDERLINE05

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			expectedString := ""
			create underline.add_underline(expectedString)
			-- Initializie our exception asserter
			create exception_asserter
		end

feature -- Test routines
	exception_asserter: EXCEPTION_ASSERTER
	test_underline_get_underline02
			-- New test routine
		note
			testing:  "covers/{UNDERLINE}.get_underline"
		local
			actualSTring: STRING
		do

			actualString := underline.get_underline
		rescue
			print("Is the text empty? %N")
			print(exception_asserter.is_precondition_violated)

			assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
		end

feature {NONE}
	underline: UNDERLINE
	expectedString: STRING


end


