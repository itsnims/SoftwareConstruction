note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_PARAGRAPH02

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create par.make
			create text1.add_text ("text 1")
			create text2.add_text ("text 2")
		end

feature -- Test routines

	test_paragraph_add_text01
			-- New test routine
		note
			testing:  "covers/{PARAGRAPH}.add_text"
		do
			par.add_text (text1)
			par.add_text (text2)

			assert ("test117_implemented", True)
		end

feature{NONE}
			par:PARAGRAPH
			text1:TEXT
			text2:TEXT
end


