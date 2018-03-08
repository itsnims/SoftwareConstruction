note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_END_TO_END11

inherit
	EQA_TEST_SET

feature -- Test routines

	test_end_to_end11
			-- New test routine
		note
			testing:  "covers/{TEXT}.add_text", "covers/{EL_ROW}.make", "covers/{TABLEE}.add_col",
			          "covers/{DOCUMENT}.make", "covers/{HTMLVISITOR}.visit_elrow",
			          "covers/{HTMLVISITOR}.visit_document",
			          "covers/{DOCUMENT}.accept", "covers/{HTMLVISITOR}.visit_normal", "covers/{TEXT}.get_normal",
			          "covers/{DOCUMENT}.get_pagetitle", "covers/{HTMLVISITOR}.visit_tablee",
			          "covers/{EL_ROW}.add_row_el",
			          "covers/{TABLEE}.accept", "covers/{TABLEE}.make", "covers/{TEXT}.accept",
			          "covers/{DOCUMENT}.add_element", "covers/{EL_ROW}.accept"
		local
			document: DOCUMENT
			t1: TEXT
			t2: TEXT
			table: TABLEE
			row: EL_ROW
			expectedString: STRING
			actualString: STRING
			visitor: HTMLVISITOR
		do
			create document.make ("name", "page title")
			create table.make
			create t1.add_text ("item 1")
			create t2.add_text ("item 2")
			create row.make
			create visitor
			row.add_row_el (t1)
			row.add_row_el (t2)
			table.add_col (row)
			document.add_element (table)
			actualString:= visitor.visit_document(document)
			expectedString:= "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<table>%N<tr><td>item 1</td><td>item 2</td></tr>%N</table>%N</body>%N</html>%N"
			print(actualString)
			print(expectedString)
			assert ("Test 44 implemented", actualString.same_string (expectedString))
		end

end

