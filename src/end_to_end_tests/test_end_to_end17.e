note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_END_TO_END17

inherit
	EQA_TEST_SET

feature -- Test routines

	test_end_to_end17
			-- New test routine
		note
			testing:  "covers/{DOCUMENT}.get_pagetitle", "covers/{DOCUMENT}.make","covers/{INTERNAL_LINK}.get_ilink",
			          "covers/{INTERNAL_LINK}.accept", "covers/{INTERNAL_LINK}.get_text","covers/{INTERNAL_LINK}.make",
			          "covers/{HTMLVISITOR}.visit_ilink","covers/{HTMLVISITOR}.visit_document", "covers/{DOCUMENT}.accept", "covers/{DOCUMENT}.add_element"
		local
			document: DOCUMENT
			link: INTERNAL_LINK
			expectedString: STRING
			actualString: STRING
			visitor: HTMLVISITOR
		do
			create document.make ("document", "page title")
			create link.make ("text",document)
			create visitor
			document.add_element (link)
			actualString:= visitor.visit_document(document)
			expectedString := "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<a href=%"/document%">text</a>%N</body>%N</html>%N"
			print(actualString)
			print(expectedString)
			assert ("Test 105 implemented", actualString.same_string (expectedString))
		end

end
