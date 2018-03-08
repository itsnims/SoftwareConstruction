note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_END_TO_END13

inherit
	EQA_TEST_SET

feature -- Test routines

	test_end_to_end13
			-- New test routine
       note
			testing:  "covers/{DOCUMENT}.get_pagetitle", "covers/{DOCUMENT}.accept", "covers/{HEADING}.make",
			          "covers/{DOCUMENT}.make", "covers/{HTMLVISITOR}.visit_document", "covers/{HEADING}.accept",
			          "covers/{DOCUMENT}.add_element", "covers/{HTMLVISITOR}.visit_heading", "covers/{DOCUMENT}.accept"
	   local
			document: DOCUMENT
			heading: HEADING
			expectedString:STRING
			actualString:STRING
			visitor: HTMLVISITOR
		do
			create document.make ("name", "page title")
			create heading.make ("heading",2)
			create visitor
			document.add_element (heading)
			actualString:= visitor.visit_document(document)
			expectedString:= "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<h2 id=%"heading%">heading</h2>%N</body>%N</html>%N"
			print(actualString)
			print(expectedString)
			assert ("Test 73 implemented", actualString.same_string (expectedString))
		end

end
