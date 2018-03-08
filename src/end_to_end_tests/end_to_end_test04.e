note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	END_TO_END_TEST04

inherit
	EQA_TEST_SET

feature -- Test routines

	end_to_end_test04
			-- New test routine
		note
			testing:  "covers/{HTMLVISITOR}.visit_normal", "covers/{DOCUMENT}.get_pagetitle",
			          "covers/{DOCUMENT}.accept", "covers/{PARAGRAPH}.accept", "covers/{TEXT}.accept",
			          "covers/{DOCUMENT}.make", "covers/{TEXT}.get_normal", "covers/{TEXT}.add_text",
			          "covers/{PARAGRAPH}.make", "covers/{HTMLVISITOR}.visit_document",
			          "covers/{HTMLVISITOR}.visit_paragraph", "covers/{DOCUMENT}.add_element",
			          "covers/{PARAGRAPH}.add_text"
		local
			document: DOCUMENT
			paragraph: PARAGRAPH
			text1: TEXT
			text2: TEXT
			expectedString: STRING
			actualString: STRING
			visitor: HTMLVISITOR
		do
			create document.make ("name", "page title")
			create paragraph.make
			create text1.add_text ("text 1")
			create text2.add_text ("text 2")
			create visitor
			paragraph.add_text (text1)
			paragraph.add_text (text2)
			document.add_element (paragraph)
			actualString:= visitor.visit_document(document)
			expectedString:= "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<p>text 1text 2</p>%N</body>%N</html>%N"
			assert ("Test 132 implemented", actualString.same_string (expectedString))
		end

end



