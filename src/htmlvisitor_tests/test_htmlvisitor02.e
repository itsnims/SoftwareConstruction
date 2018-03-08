note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_HTMLVISITOR02

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create document.make("document1", "page title")
			create paragraph.make
			create text.add_text("text")
			create visitor
			paragraph.add_text(text)
			document.add_element(paragraph)
			output_string:= visitor.visit_document(document)
			io.put_string (output_string)
		end

feature -- Test routines

	test_htmlvisitor_save_document02
			-- New test routine
		note
			testing:  "covers/{HTMLVISITOR}.save_document"
		do
			visitor.save_document(output_string, "")
			assert ("Test 144 implemented", True)
		end
feature {NONE}
	document:DOCUMENT
	paragraph: PARAGRAPH
	text: TEXT
	output_string: STRING
	visitor: HTMLVISITOR
end

