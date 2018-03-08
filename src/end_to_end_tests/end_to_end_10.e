note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	END_TO_END_10

inherit
	EQA_TEST_SET

feature -- Test routines

	END_TO_END_TEST10
			-- New test routine
		note
			testing:  "covers/{TABLEE}.add_col", "covers/{DOCUMENT}.get_pagetitle",
			          "covers/{VISITOR}.visit_document", "covers/{EL_ROW}.add_row_el"
		local
			document : DOCUMENT
			text1 :TEXT
			text2: TEXT
			text3: TEXT
			text4 : TEXT
			text5: TEXT
			t1: TABLEE
			t2: TABLEE
			r1: EL_ROW
			r2: EL_ROW
			r3: EL_ROW
			r4: EL_ROW
			visitor: HTMLVISITOR
			actualString : STRING
			expectedString : STRING
		do
			create document.make ("name", "page title")
			create text1.add_text ("p1")
			create text2.add_text ("p2")
			create text3.add_text ("p3")
			create text4.add_text ("p4")
			create text5.add_text ("p5")

			create t1.make
			create t2.make

			create r1.make
			create r2.make
			create r3.make
			create r4.make

			create visitor

			r1.add_row_el (text1)
			r1.add_row_el (text2)

			r2.add_row_el (text3)
			r3.add_row_el (text4)

			r4.add_row_el (text5)

			t2.add_col (r3)
			t2.add_col (r4)
			r2.add_row_el (t2)

			t1.add_col (r1)
			t1.add_col (r2)


			document.add_element (t1)


			actualString := visitor.visit_document (document)
			expectedString := "<!DOCTYPE html>%N<html>%N<head>%N<title>page title</title>%N</head>%N<body>%N<table>%N<tr><td>p1</td><td>p2</td></tr>%N<tr><td>p3</td><td><table>%N<tr><td>p4</td></tr>%N<tr><td>p5</td></tr>%N</table>%N</td></tr>%N</table>%N</body>%N</html>%N"
			print(actualString)
			print(expectedString)
			assert ("Test 149 implemented", actualString.same_string (expectedString))



		end

end


