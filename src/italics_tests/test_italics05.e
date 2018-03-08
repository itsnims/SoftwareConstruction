note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ITALICS05

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
			create italics.add_italics(expectedString)
			-- Initializie our exception asserter
			create exception_asserter
		end

feature -- Test routines
	exception_asserter: EXCEPTION_ASSERTER
	test_italics_get_italics02
			-- New test routine
		note
			testing:  "covers/{ITALICS}.get_italics"
		local
			actualSTring: STRING
		do

			actualString := italics.get_italics
		rescue
			print("Is the text empty? %N")
			print(exception_asserter.is_precondition_violated)

			assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)

		end

feature {NONE}
	italics: ITALICS
	expectedString: STRING

end


