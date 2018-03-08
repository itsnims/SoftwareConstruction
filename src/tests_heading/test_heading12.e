note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_HEADING12

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			-- Initializie our exception asserter
			create exception_asserter

		end


feature -- Test routines

    exception_asserter: EXCEPTION_ASSERTER

	test_heading_make12
			-- New test routine
		note
			testing:  "covers/{HEADING}.make"
		local
			head: HEADING
		has_exception: BOOLEAN
		do
			if not has_exception then
			create head.make("heading", 7)

			assert ("test72_implemented", False)
		end
        rescue
				print("Is the heading level not between 1 and 6 (including)? %N")
				print(exception_asserter.is_precondition_violated)

				assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
				has_exception := True
				retry
    	end

end


