note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	END_TO_END_TEST05

inherit
	EQA_TEST_SET

feature -- Test routines

	end_to_end_test05
			-- New test routine
		note
			testing:  "covers/{UNDERLINE}.accept", "covers/{DOCUMENT}.get_pagetitle",
			          "covers/{UNDERLINE}.get_underline", "covers/{DOCUMENT}.accept",
			          "covers/{HTMLVISITOR}.visit_underline", "covers/{DOCUMENT}.make",
			          "covers/{PARAGRAPH}.accept", "covers/{UNDERLINE}.add_underline", "covers/{PARAGRAPH}.make",
			          "covers/{HTMLVISITOR}.visit_document", "covers/{HTMLVISITOR}.visit_paragraph",
			          "covers/{DOCUMENT}.add_element", "covers/{PARAGRAPH}.add_text"
		local
			document: DOCUMENT
			paragraph: PARAGRAPH
			underlined: UNDERLINE
			expectedString: STRING
			actualString: STRING
			visitor: HTMLVISITOR
		do
			create document.make ("name", "page title")
			create paragraph.make
			create underlined.add_underline ("text")
			create visitor
			paragraph.add_text (underlined)
			document.add_element (paragraph)
			actualString:= visitor.visit_document(document)
			expectedString:= "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<p><u>text</u></p>%N</body>%N</html>%N"
			print(actualString)
			assert ("Test 139 implemented", actualString.same_string (expectedString))
		end

end



