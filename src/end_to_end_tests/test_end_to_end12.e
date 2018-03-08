note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_END_TO_END12

inherit
	EQA_TEST_SET

feature -- Test routines

	test_end_to_end12
			-- New test routine
		note
			testing:   "covers/{DOCUMENT}.make", "covers/{HTMLVISITOR}.visit_external_link",
			          "covers/{HTMLVISITOR}.visit_document", "covers/{EXTERNAL_LINK}.get_text",
			          "covers/{DOCUMENT}.accept","covers/{EXTERNAL_LINK}.accept","covers/{EXTERNAL_LINK}.get_elink",
			          "covers/{DOCUMENT}.add_element", "covers/{DOCUMENT}.get_pagetitle","covers/{EXTERNAL_LINK}.adress"
		local
			document: DOCUMENT
			link: EXTERNAL_LINK
			expectedString: STRING
			actualString: STRING
			visitor: HTMLVISITOR
		do
			create document.make ("name", "page title")
			create link.adress ("link", "text")
			create visitor
			document.add_element (link)
			actualString:= visitor.visit_document(document)
			expectedString:="<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<a href=%"link%">text</a>%N</body>%N</html>%N"
			print(actualString)
			print(expectedString)
			assert ("Test 60 implemented", actualString.same_string (expectedString))
		end

end

