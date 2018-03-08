note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_INTERNAL_LINK04

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
			do
			create doc.make("document", "page title")
			create exception_asserter
		    end

feature -- Test routines

    exception_asserter: EXCEPTION_ASSERTER
    test_internal_link_make04
			-- New test routine
		note
			testing:  "covers/{INTERNAL_LINK}.make"
		local
			link: INTERNAL_LINK
		    has_exception: BOOLEAN
			do
			if not has_exception then
			create link.make ("", doc)
			assert ("test93_implemented",False)
		end
		rescue
				print ("Is the input empty? %N")
				print (exception_asserter.is_precondition_violated)
				assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
				has_exception := True
				retry
			end
feature{NONE}
     doc: DOCUMENT
end


