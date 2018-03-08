note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_UNDERLINE03

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
	test_underline_add_underline03
			-- New test routine
		note
			testing:  "covers/{UNDERLINE}.add_underline"
		local
			underline: UNDERLINE
			has_exception: BOOLEAN
		do
			if not has_exception then
				create underline.add_underline ("The ML Generator is not a standalone application. In order to work, it should be supported by the API. It can be also integrated in more complex systems or used together with a third-party application which provides the ML Generator with an input. An example for such an application is a software application which calculates statistics. The ML Generator shall receive the statistic data from this application and create a string in the required markup language which would represent this input. The M")
				assert ("Precondition violation", False)
				end
		rescue
			print("Does the text override the 500 character limit? %N")
			print(exception_asserter.is_precondition_violated)

			assert ("Exception should be a precondition", exception_asserter.is_precondition_violated)
			has_exception:= True
			retry
		end

end


