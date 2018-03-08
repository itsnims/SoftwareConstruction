note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	END_TO_END_TEST01

inherit
	EQA_TEST_SET

feature -- Test routines

	end_to_end_test01
			-- New test routine
		note
			testing:  "covers/{ITALICS}.get_italics", "covers/{DOCUMENT}.get_pagetitle",
			          "covers/{DOCUMENT}.accept", "covers/{PARAGRAPH}.accept",
			          "covers/{HTMLVISITOR}.visit_italics", "covers/{PARAGRAPH}.make", "covers/{DOCUMENT}.make",
			          "covers/{ITALICS}.add_italics", "covers/{ITALICS}.accept",
			          "covers/{HTMLVISITOR}.visit_document", "covers/{HTMLVISITOR}.visit_paragraph",
			          "covers/{DOCUMENT}.add_element", "covers/{PARAGRAPH}.add_text"
		local
			document: DOCUMENT
			paragraph: PARAGRAPH
			italics: ITALICS
			expectedString: STRING
			actualString: STRING
			visitor: HTMLVISITOR
		do
			create document.make ("name", "page title")
			create paragraph.make
			create italics.add_italics ("text")
			create visitor
			paragraph.add_text (italics)
			document.add_element (paragraph)
			actualString:= visitor.visit_document(document)
			expectedString:= "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<p><i>text</i></p>%N</body>%N</html>%N"
			print(actualString)
			assert ("Test 112 implemented", actualString.same_string (expectedString))
		end

end


