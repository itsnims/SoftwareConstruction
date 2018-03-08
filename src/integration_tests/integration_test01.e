note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	INTEGRATION_TEST01

inherit
	EQA_TEST_SET

feature -- Test routines

	integration_test01
			-- New test routine
		note
			testing:  "covers/{HTMLVISITOR}.visit_normal", "covers/{DOCUMENT}.get_pagetitle",
			          "covers/{DOCUMENT}.accept", "covers/{PARAGRAPH}.accept", "covers/{TEXT}.accept",
			          "covers/{DOCUMENT}.make", "covers/{HTMLVISITOR}.save_document", "covers/{TEXT}.get_normal",
			          "covers/{TEXT}.add_text", "covers/{PARAGRAPH}.make", "covers/{HTMLVISITOR}.visit_document",
			          "covers/{HTMLVISITOR}.visit_paragraph", "covers/{DOCUMENT}.add_element",
			          "covers/{PARAGRAPH}.add_text"
		local
			document:DOCUMENT
			p1: PARAGRAPH
			p2: PARAGRAPH
			t1: TEXT
			t2: TEXT
			output_string: STRING
			visitor: HTMLVISITOR
		do
			create document.make("document1", "page title")
			create p1.make
			create p2.make
			create t1.add_text("text 1")
			create t2.add_text("text 2")
			create visitor
			p1.add_text(t1)
			p2.add_text(t2)
			document.add_element(p1)
			output_string:= visitor.visit_document(document)
			io.put_string (output_string)
			visitor.save_document(output_string, "file1")
			document.add_element(p2)
			output_string:= visitor.visit_document(document)
			io.put_string (output_string)
			visitor.save_document(output_string, "file1")
			assert ("Test 145 implemented", True)
		end

end


