note
	description: "MLGEN application root class"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	index: DOCUMENT

	paragraph:PARAGRAPH
	heading: HEADING
	heading1: HEADING
	snippet: SNIPPET
	fett:BOLD
	nicht:TEXT
	under:UNDERLINE
	list: UNORDERED_LIST
	list1: ORDERED_LIST
	p1: TEXT
	p2: TEXT
	table: TABLEE
	p3: TEXT
	p4:TEXT
	p5: TEXT
	r1: EL_ROW
	r2: EL_ROW
	anchlink1: ANCHOR_LINK

    visitor:HTMLVISITOR

	stringu:STRING

	make
		do
			create index.make("index", "Page Title")
            create visitor
			create paragraph.make
			create heading.make("bla", 1)
			create heading1.make("jo", 1)
			create snippet.make("p=1")
			create nicht.add_text ("das ist nicht fett")
			create fett.add_bold ("das ist aber fett")
			create under.add_underline("das ist underlined")
			create list.make
			create list1.make
			create p1.add_text("p1")
			create p2.add_text("p2")
			create table.make
			create p3.add_text("p3")
			create p4.add_text("p4")
			create p5.add_text("p5")
			create r1.make
			create r2.make
			create anchlink1.make("jo", "jo")

			paragraph.add_text(nicht)
			paragraph.add_text(fett)
			paragraph.add_text(under)

			list.add_point(p1)
			list.add_point(p2)
			list.add_point(paragraph)

			list1.add_point(heading1)

			r1.add_row_el(p3)
			r1.add_row_el (p5)
			r2.add_row_el(p4)
			r2.add_row_el (paragraph)
			table.add_col(r1)
			table.add_col(r2)

            index.add_element (heading)
            index.add_element (snippet)
			index.add_element (paragraph)
			index.add_element (list)
			index.add_element (list1)
			index.add_element (paragraph)
			index.add_element (paragraph)
			index.add_element (paragraph)
			index.add_element (paragraph)
			index.add_element (paragraph)
			index.add_element (paragraph)
			index.add_element (table)
			index.add_element (anchlink1)

			stringu:=visitor.visit_document (index)
			io.put_string (stringu)
			visitor.save_document(stringu, "file1")

		end
end
