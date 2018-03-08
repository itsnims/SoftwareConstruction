note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_TEXT05

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
			create text.add_text(expectedString)
			-- Initializie our exception asserter
			create exception_asserter
		end

feature -- Test routines
	exception_asserter: EXCEPTION_ASSERTER
	test_text_get_normal02
			-- New test routine
		note
			testing:  "covers/{TEXT}.get_normal"
		local
			actualSTring: STRING
		do

			actualString := text.get_normal
		rescue
			print("Is the texy empty? %N")
			print(exception_asserter.is_precondition_violated)

			assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
		end
feature {NONE}
	text: TEXT
	expectedString: STRING

end


