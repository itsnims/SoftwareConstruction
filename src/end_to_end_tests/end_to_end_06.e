note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	END_TO_END_06

inherit
	EQA_TEST_SET

feature -- Test routines

	END_TO_END_TEST06
			-- New test routine
		note
			testing:  "covers/{DOCUMENT}.get_pagetitle", "covers/{ANCHOR_LINK}.get_alink",
			          "covers/{ANCHOR_LINK}.accept", "covers/{ANCHOR_LINK}.get_text",
			          "covers/{HTMLVISITOR}.visit_alink"
		local
			document: DOCUMENT
			anchorlink: ANCHOR_LINK
			expectedString: STRING
			actualString: STRING
			visitor: HTMLVISITOR
		do
			create document.make ("name", "page title")
			create anchorlink.make ("link","text")
			create visitor
			document.add_element (anchorlink)
			actualString:= visitor.visit_document(document)
			expectedString := "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<a href=%"#link%">text</a></body>%N</html>%N"
			print(actualString)
			print(expectedString)
			assert ("Test 17 implemented", actualString.same_string (expectedString))
		end

end


