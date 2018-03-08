note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_END_TO_END19

inherit
	EQA_TEST_SET

feature -- Test routines

	test_end_to_end19
			-- New test routine
		note
			testing:  "covers/{DOCUMENT}.get_pagetitle", "covers/{VISITOR}.visit_document",
			          "covers/{ORDERED_LIST}.accept", "covers/{ORDERED_LIST}.add_point",
			          "covers/{HTMLVISITOR}.visit_orderedlist","covers/{DOCUMENT}.accept",
			          "covers/{DOCUMENT}.make",
			          "covers/{TEXT}.add_text", "covers/{ORDERED_LIST}.make", "covers/{DOCUMENT}.add_element"

		local
			document : DOCUMENT
			text1 : TEXT
			text2 : TEXT
			text3 : TEXT
			text4 : TEXT
			text5 : TEXT
			l1 : ORDERED_LIST
			l2: ORDERED_LIST
			visitor : HTMLVISITOR
			actualString : STRING
			expectedString : STRING
		do
			create visitor
			create document.make ("name", "page title")
			create text1.add_text ("text 1")
			create text2.add_text ("text 2")
			create text3.add_text ("text 3")
			create text4.add_text ("text 4")
			create text5.add_text ("text 5")
			create l1.make
			create l2.make

			l2.add_point (text3)
			l2.add_point (text4)

			l1.add_point (text1)
			l1.add_point (text2)
			l1.add_point (l2)
			l1.add_point (text5)

			document.add_element (l1)

			actualString := visitor.visit_document (document)
			expectedString := "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<ol>%N<li>text 1</li>%N<li>text 2</li>%N<li><ol>%N<li>text 3</li>%N<li>text 4</li>%N</ol>%N</li>%N<li>text 5</li>%N</ol>%N</body>%N</html>%N"
                        print(actualString)
			print(expectedString)
			assert ("Test 146 implemented", actualString.same_string (expectedString))


		end

end


