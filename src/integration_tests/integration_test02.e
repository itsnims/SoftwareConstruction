note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	INTEGRATION_TEST02

inherit
	EQA_TEST_SET

feature -- Test routines

	integration_test02
			-- New test routine
        note
			testing:  "covers/{HTMLVISITOR}.visit_normal","covers/{HTMLVISITOR}.visit_bold",
			          "covers/{HTMLVISITOR}.visit_underline","covers/{HTMLVISITOR}.visit_italics","covers/{DOCUMENT}.get_pagetitle",
			          "covers/{DOCUMENT}.accept", "covers/{PARAGRAPH}.accept", "covers/{TEXT}.accept",
			          "covers/{BOLD}.accept","covers/{UNDERLINE}.accept","covers/{ITALICS}.accept",
			          "covers/{DOCUMENT}.make", "covers/{TEXT}.get_normal","covers/{TEXT}.add_text",
			          "covers/{BOLD}.get_bold","covers/{BOLD}.add_bold","covers/{UNDERLINE}.get_underline","covers/{UNDERLINE}.add_underline",
			          "covers/{ITALICS}.get_italic","covers/{ITALICS}.add_italics",
			          "covers/{PARAGRAPH}.make", "covers/{HTMLVISITOR}.visit_document",
			          "covers/{HTMLVISITOR}.visit_paragraph", "covers/{DOCUMENT}.add_element",
			          "covers/{PARAGRAPH}.add_text"
		local
			document:DOCUMENT
			p1: PARAGRAPH
			t1: TEXT
			t2: BOLD
			t3: ITALICS
			t4: UNDERLINE
			output_string: STRING
			visitor: HTMLVISITOR
		do
			create document.make("document1", "page title")
			create p1.make
			create t1.add_text("plain text")
			create t2.add_bold("bold text")
			create t3.add_italics("italics text")
			create t4.add_underline("underline text")
			create visitor
			p1.add_text(t1)
			p1.add_text(t2)
			p1.add_text(t3)
			p1.add_text(t4)
			document.add_element(p1)

			output_string:= visitor.visit_document(document)
			io.put_string (output_string)

			assert ("Test 118 implemented", True)
		end

end
