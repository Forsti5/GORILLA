module test_supporting_functions_mod
   use supporting_functions_mod
   use funit
   implicit none
   
contains

	@test
	subroutine test_logical2integer_true()
		logical:: boole_in
		integer:: value
		
		boole_in = .TRUE.
		value = logical2integer(boole_in)
		
		@assertEqual(value,1,message = "Testing logical2integer with true value")
		
	end subroutine test_logical2integer_true
	
	@test
	subroutine test_logical2integer_false()
		logical:: boole_in
		integer:: value
		
		boole_in = .FALSE.
		value = logical2integer(boole_in)
		
		@assertEqual(value,0,message = "Testing logical2integer with true false")
		
	end subroutine test_logical2integer_false

end module test_supporting_functions_mod
