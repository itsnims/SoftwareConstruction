note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	END_TO_END_07

inherit
	EQA_TEST_SET

feature -- Test routines

	END_TO_END_TEST07
			-- New test routine
		note
			testing:  "covers/{BOLD}.add_bold", "covers/{HTMLVISITOR}.visit_bold",
			          "covers/{DOCUMENT}.get_pagetitle", "covers/{BOLD}.get_bold", "covers/{BOLD}.accept"
		local
			document: DOCUMENT
			bold : BOLD
			paragraph : PARAGRAPH
			expectedString: STRING
			actualString: STRING
			visitor: HTMLVISITOR
		do
			create document.make ("name", "title")
			create bold.add_bold ("text")
			create paragraph.make
			create visitor
			paragraph.add_text (bold)
			document.add_element (paragraph)
			actualString:= visitor.visit_document(document)
			expectedString := "<!DOCTYPE html>%N<html>%N<head>%N<title>title</title>%N</head>%N<body>%N<p><b>text</b></p>%N</body>%N</html>%N"
			print(actualString)
			print(expectedString)
			assert ("Test 24 implemented", actualString.same_string (expectedString))
		end

end


