note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	END_TO_END_09

inherit
	EQA_TEST_SET

feature -- Test routines

	END_TO_END_TEST09
			-- New test routine
		note
			testing:  "covers/{DOCUMENT}.get_pagetitle", "covers/{VISITOR}.visit_document",
			          "covers/{UNORDERED_LIST}.accept", "covers/{HTMLVISITOR}.visit_unorderedlist"
		local
			document : DOCUMENT
			text1 : TEXT
			text2 : TEXT
			list : UNORDERED_LIST
			link : EXTERNAL_LINK
			visitor : HTMLVISITOR
			actualString : STRING
			expectedString : STRING
		do
			create visitor
			create document.make ("name", "page title")
			create text1.add_text ("text 1")
			create text2.add_text ("text 2")
			create link.adress ("link", "text")
			create list.make

			list.add_point (text1)
			list.add_point (text2)
			list.add_point (link)

			document.add_element (list)

			actualString := visitor.visit_document (document)
			expectedString := "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<ul>%N<li>text 1</li>%N<li>text 2</li>%N<li><a href=%"link%">text</a>%N</li>%N</ul>%N</body>%N</html>%N"
			print(actualString)
			print(expectedString)

			assert ("Test 142 implemented", actualString.same_string (expectedString))


		end

end


