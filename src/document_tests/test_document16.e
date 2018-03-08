note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_DOCUMENT16

inherit
	EQA_TEST_SET
		redefine
			on_prepare

		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create doc.make("name","page title")
			create text1.add_text ("text 1")
			create text2.add_text ("text 2")
			create paragraph1.make
			create paragraph2.make
			paragraph1.add_text(text1)
			paragraph2.add_text(text2)
		end

feature -- Test routines

	test_documet_add_element01
			-- New test routine
		note
			testing:  "covers/{DOCUMENT}.add_element"
		do
			doc.add_element (paragraph1)
			doc.add_element (paragraph2)

			assert ("test40_implemented", True)
		end

feature{NONE}
			doc:DOCUMENT
			paragraph1:PARAGRAPH
			paragraph2:PARAGRAPH
			text1:TEXT
			text2:TEXT
end


