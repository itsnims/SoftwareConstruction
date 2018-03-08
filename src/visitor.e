DEFERRED class
	VISITOR
	
feature {ANY}
	visit_unorderedlist(a_ul:UNORDERED_LIST):STRING
	deferred
	end
	visit_orderedlist(a_ul:ORDERED_LIST):STRING
	deferred
	end
	visit_snippet(a_s:SNIPPET):STRING
	deferred
	end
	visit_heading(a_h:HEADING):STRING
	deferred
	end
	visit_paragraph(a_p:PARAGRAPH):STRING
	deferred
	end
	visit_image(a_i:IMAGE):STRING
	deferred
	end
	visit_elink(e_l:EXTERNAL_LINK):STRING
	deferred
	end
	visit_ilink(i_l:INTERNAL_LINK):STRING
	deferred
	end
	visit_bold(b:BOLD):STRING
	deferred
	end
	visit_normal(n:TEXT):STRING
	deferred
	end
	visit_italics(i:ITALICS):STRING
	deferred
	end
	visit_underline(u:UNDERLINE):STRING
	deferred
	end
	visit_tablee(t: TABLEE):STRING
	deferred
	end
    visit_elrow(r:EL_ROW): STRING
    deferred
    end
    visit_alink(a_l:ANCHOR_LINK):STRING
    deferred
    end
    visit_document(d:DOCUMENT):STRING
	deferred
	end
	save_document(input_string : STRING; name: STRING)
	deferred
	end
end
