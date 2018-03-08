note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_EXTERNAL_LINK14

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
			create elink.adress("link", expectedString)
			-- Initializie our exception asserter
			create exception_asserter
		end

feature -- Test routines
	exception_asserter: EXCEPTION_ASSERTER
	test_external_link_get_text02
			-- New test routine
		note
			testing:  "covers/{EXTERNAL_LINK}.get_text"
		local
			actualSTring: STRING
		do

			actualString := elink.get_text
		rescue
			print("Is the text of the link empty? %N")
			print(exception_asserter.is_precondition_violated)

			assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
		end

feature {NONE}
	elink: EXTERNAL_LINK
	expectedString: STRING

end



