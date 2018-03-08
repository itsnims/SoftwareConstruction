
note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_END_TO_END14

inherit
	EQA_TEST_SET

feature -- Test routines

	test_end_to_end14
			-- New test routine
		note
			testing:  "covers/{DOCUMENT}.get_pagetitle", "covers/{VISITOR}.visit_document",
			          "covers/{ORDERED_LIST}.accept", "covers/{HTMLVISITOR}.visit_orderedlist",
			          "covers/{DOCUMENT}.make","covers/{TEXT}.add_text","covers/{ORDERED_LIST}.make",
			          "covers/{DOCUMENT}.accept", "covers/{ORDERED_LIST}.add_point", "covers/{DOCUMENT}.add_element"
		local
			document : DOCUMENT
			text1 : TEXT
			text2 : TEXT
			list : ORDERED_LIST
			visitor : HTMLVISITOR
			actualString : STRING
			expectedString : STRING
		do
			create visitor
			create document.make ("name", "page title")
			create text1.add_text ("text 1")
			create text2.add_text ("text 2")
			create list.make

			list.add_point (text1)
			list.add_point (text2)

			document.add_element (list)

			actualString := visitor.visit_document (document)
			expectedString := "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<ol>%N<li>text 1</li>%N<li>text 2</li>%N</ol>%N</body>%N</html>%N"
            print(actualString)
			print(expectedString)
			assert ("Test 115 implemented", actualString.same_string (expectedString))


		end

end
