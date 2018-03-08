note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	END_TO_END_TEST03

inherit
	EQA_TEST_SET

feature -- Test routines

	end_to_end_test03
			-- New test routine
		note
			testing:  "covers/{TEXT}.add_text", "covers/{EL_ROW}.make", "covers/{TABLEE}.add_col",
			          "covers/{DOCUMENT}.make", "covers/{HTMLVISITOR}.visit_elrow",
			          "covers/{HTMLVISITOR}.visit_document", "covers/{EXTERNAL_LINK}.get_text",
			          "covers/{DOCUMENT}.accept", "covers/{HTMLVISITOR}.visit_normal",
			          "covers/{EXTERNAL_LINK}.adress", "covers/{TEXT}.get_normal",
			          "covers/{DOCUMENT}.get_pagetitle", "covers/{HTMLVISITOR}.visit_tablee",
			          "covers/{EL_ROW}.add_row_el", "covers/{EXTERNAL_LINK}.accept",
			          "covers/{EXTERNAL_LINK}.get_elink", "covers/{HTMLVISITOR}.visit_elink",
			          "covers/{TABLEE}.accept", "covers/{TABLEE}.make", "covers/{TEXT}.accept",
			          "covers/{DOCUMENT}.add_element", "covers/{EL_ROW}.accept"
		local
			document: DOCUMENT
			exlink: EXTERNAL_LINK
			t1: TEXT
			t2: TEXT
			t3: TEXT
			table: TABLEE
			row1: EL_ROW
			row2: EL_ROW
			expectedString: STRING
			actualString: STRING
			visitor: HTMLVISITOR
		do
			create document.make ("name", "page title")
			create table.make
			create t1.add_text ("item 1")
			create t2.add_text ("item 2")
			create t3.add_text ("item 3")
			create exlink.adress ("link", "text")
			create row1.make
			create row2.make
			create visitor
			row1.add_row_el (t1)
			row1.add_row_el (t2)
			row2.add_row_el (t3)
			row2.add_row_el (exlink)
			table.add_col (row1)
			table.add_col (row2)
			document.add_element (table)
			actualString:= visitor.visit_document(document)
			expectedString:= "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<table>%N<tr><td>item 1</td><td>item 2</td></tr>%N<tr><td>item 3</td><td><a href=%"link%">text</a>%N</td></tr>%N</table>%N</body>%N</html>%N"
			print(actualString)
			assert ("Test 125 implemented", actualString.same_string (expectedString))
		end

end


