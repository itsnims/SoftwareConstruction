note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ITALICS02

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
	test_italics_add_italics02
			-- New test routine
		note
			testing:  "covers/{ITALICS}.add_italics"
		local
			italics: ITALICS
			has_exception: BOOLEAN
		do
			if not has_exception then
				create italics.add_italics ("")
				assert ("Precondition violation", False)
				end
		rescue
			print("Is the text empty? %N")
			print(exception_asserter.is_precondition_violated)

			assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
			has_exception:= True
			retry
		end

end


