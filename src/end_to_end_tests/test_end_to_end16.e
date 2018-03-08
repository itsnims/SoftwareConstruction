note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_END_TO_END16

inherit
	EQA_TEST_SET

feature -- Test routines

	testend_to_end16
			-- New test routine
		note
			testing:  "covers/{DOCUMENT}.get_pagetitle","covers/{DOCUMENT}.add_element", "covers/{DOCUMENT}.make", "covers/{IMAGE}.get_picture",
			          "covers/{IMAGE}.accept", "covers/{IMAGE}.get_description","covers/{DOCUMENT}.accept",
			          "covers/{HTMLVISITOR}.visit_image", "covers/{HTMLVISITOR}.visit_document","covers/{IMAGE}.picture"
		local
			document: DOCUMENT
			image: IMAGE
			expectedString: STRING
			actualString: STRING
			visitor: HTMLVISITOR
		do
			create document.make ("name", "page title")
			create image.picture ("pic.jpg","description")
			create visitor
			document.add_element (image)
			actualString:= visitor.visit_document(document)
			expectedString := "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<img src=%"pic.jpg%" alt=%"description%">%N</body>%N</html>%N"
			print(actualString)
			print(expectedString)
			assert ("Test 89 implemented", actualString.same_string (expectedString))
		end

end

