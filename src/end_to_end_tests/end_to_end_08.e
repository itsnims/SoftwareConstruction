note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	END_TO_END_08

inherit
	EQA_TEST_SET

feature -- Test routines

	END_TO_END_TEST08
			-- New test routine
		note
			testing:  "covers/{TEXT}.add_text", "covers/{DOCUMENT}.get_pagetitle",
			          "covers/{VISITOR}.visit_document", "covers/{TEXT}.accept", "covers/{TEXT}.get_normal"
			local
				document: DOCUMENT
				text : TEXT
				paragraph : PARAGRAPH
				expectedString: STRING
				actualString: STRING
				visitor: HTMLVISITOR
			do
				create document.make ("name", "page title")
				create text.add_text("text")
				create paragraph.make
				create visitor
				paragraph.add_text (text)
				document.add_element (paragraph)
				actualString:= visitor.visit_document(document)
				expectedString := "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<p>text</p>%N</body>%N</html>%N"
				assert ("Test 41 implemented", actualString.same_string (expectedString))
			end

end


