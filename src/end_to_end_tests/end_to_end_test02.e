note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	END_TO_END_TEST02

inherit
	EQA_TEST_SET

feature -- Test routines

	end_to_end_test02
			-- New test routine
		note
			testing:  "covers/{DOCUMENT}.get_pagetitle", "covers/{DOCUMENT}.accept", "covers/{SNIPPET}.make",
			          "covers/{DOCUMENT}.make", "covers/{HTMLVISITOR}.visit_document", "covers/{SNIPPET}.accept",
			          "covers/{DOCUMENT}.add_element", "covers/{HTMLVISITOR}.visit_snippet"
		local
			document: DOCUMENT
			snippet: SNIPPET
			expectedString: STRING
			actualString: STRING
			visitor: HTMLVISITOR
		do
			create document.make ("name", "page title")
			create snippet.make ("code")
			create visitor
			document.add_element (snippet)
			actualString:= visitor.visit_document(document)
			expectedString:= "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<code id=%"code%">code</code>%N</body>%N</html>%N"
			assert ("Test 122 implemented", actualString.same_string (expectedString))
		end

end

