class
	HTMLVISITOR

inherit
	VISITOR

feature
	visit_unorderedlist(a_ul:UNORDERED_LIST):STRING
	Local
	html: attached STRING
	do
		html:="<ul>%N"
		across a_ul.elements.new_cursor as v
		loop
			html:= html + "<li>" + v.item.accept (create{HTMLVISITOR})+"</li>%N"
		end
		html:= html +"</ul>%N"
		Result:= html
	end
	visit_orderedlist(a_ol:ORDERED_LIST):STRING
	local
		html:attached STRING
		do
			html:="<ol>%N"
			across a_ol.elements.new_cursor as v
			loop
				html:= html + "<li>" + v.item.accept (create{HTMLVISITOR})+"</li>%N"
			end
			html:= html+"</ol>%N"
			Result:=html
		end
   visit_snippet(a_s:SNIPPET):STRING
	local
		html:attached STRING
		do
			html:="<code id=%"" + a_s.id + "%">"
			html:= html + a_s.input + "</code>%N"
			Result:=html
		end
	visit_heading(a_h:HEADING):STRING
	local
		html:attached STRING
		do
			html:="<h"+  a_h.size + " id=%""+ a_h.id+  "%">"
			html:= html +a_h.heading + "</h" + a_h.size + ">%N"
			Result:=html
		end
	visit_paragraph(a_p:PARAGRAPH):STRING
	local
		html:attached STRING
		do
			html:= "<p>"
			across a_p.paragraph.new_cursor as v
			loop
				html:= html +v.item.accept (create{HTMLVISITOR})

			end
			html:= html + "</p>%N"
			Result:=html
		end
   visit_image(i: IMAGE): STRING
   Local
   		html: attached STRING
   		do
   			html:="<img src=%""+i.get_picture+ "%" alt=%"" +i.get_description+"%">%N"
   			Result:=html
   		end
   visit_elink(e_l:EXTERNAL_LINK):STRING
      Local
   		html: attached STRING
   		do
   			html:="<a href=%""+e_l.get_elink+ "%">" +e_l.get_text+"</a>%N"
   			Result:=html
   		end
   	visit_ilink(i_l:INTERNAL_LINK):STRING
      Local
   		html: attached STRING
   		do
   			html:="<a href=%"/"+i_l.get_ilink+ "%">" +i_l.get_text+"</a>%N"
   			Result:=html
   		end
   	visit_bold(b:BOLD):STRING
   	local
   		html:attached STRING
   		do
   			html:="<b>" + b.get_bold+"</b>"
   			Result:=html
   		end
   	visit_normal(n:TEXT):STRING
   	local
   		html:attached STRING
   		do
   			html:= n.get_normal
   			Result:= html
   		end
   	visit_italics(i:ITALICS):STRING
   	local
   		html:attached STRING
   		do
   			html:="<i>" + i.get_italics+"</i>"
   			Result:= html
   		end
   	visit_underline(u:UNDERLINE):STRING
   		local
   		html:attached STRING
   		do
   			html:="<u>" + u.get_underline+"</u>"
   			Result:= html
   		end
   	visit_tablee(t: TABLEE): STRING
   	local
   		html: attached STRING
   		do
   			html:= "<table>%N"
   		  	across t.el_col.new_cursor as v
			loop
				html:= html + "<tr>" +v.item.accept (create{HTMLVISITOR})+ "</tr>%N"
			end
			html:=html+"</table>%N"
			Result:=html
        end

    visit_elrow(r: EL_ROW):STRING
   		local
   		html: attached STRING
   		do
   			html:=""
   		  	across r.el_row.new_cursor as v
			loop
				html:= html + "<td>"+ v.item.accept (create{HTMLVISITOR})+"</td>"
			end
			html:=html+""
			Result:=html
       end
    visit_alink(a_l: ANCHOR_LINK):STRING
     local
     html: attached STRING
     do
    	html:=  "<a href=" + "%"#"+ a_l.get_alink+ "%">" + a_l.get_text + "</a>"
    	Result:= html
     end
   visit_document(d:DOCUMENT):STRING
   	local
	output_string: attached STRING
	    do
	      output_string:=	"<!DOCTYPE html>%N<html>%N"
   		  output_string:=output_string+"<head>%N<title>"+d.get_pagetitle+"</title>%N</head>%N<body>%N"
	      across d.doc.new_cursor as v
	      loop
	    	   output_string.append(v.item.accept(create{HTMLVISITOR}))
	      end
	      output_string := output_string + "</body>%N</html>%N"
	      Result:=output_string
	    end
    save_document(input_string:STRING; name: STRING)
    Local
    output_file: PLAIN_TEXT_FILE
    filename: STRING
            -- Run
        do
        	if name.count = 0 then
        		filename:="File"
        	else
        		filename:=name

        	end
            create output_file.make_open_write (filename + ".html")

            output_file.put_string (input_string)

            output_file.close
        end
end

