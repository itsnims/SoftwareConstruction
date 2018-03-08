note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_EXTERNAL_LINK01

inherit
	EQA_TEST_SET

feature -- Test routines

	test_external_link_adress01
			-- New test routine
		note
			testing:  "covers/{EXTERNAL_LINK}.adress"
		local
			e_link: EXTERNAL_LINK
		do
			create e_link.adress ("link", "text")

			assert ("test45_implemented", True)
		end

end



