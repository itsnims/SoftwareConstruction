note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ANCHOR_LINK05

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create exception_asserter
		end

feature -- Test routines
	exception_asserter : EXCEPTION_ASSERTER
	Test_anchor_link_make05
			-- New test routine
		note
			testing:  "covers/{ANCHOR_LINK}.make"
		local
					anchorlink: ANCHOR_LINK
					has_exception: BOOLEAN
				do
					if not has_exception then
						create anchorlink.make ("", "link")
						assert("Test_05",False)
					end
				rescue
						print("Is the input empty? %N")
						print(exception_asserter.is_precondition_violated)

						assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
						has_exception := True
						retry

					end
end


