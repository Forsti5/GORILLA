module test_gorilla_settings_mod
   use gorilla_settings_mod, only: set_eps_Phi, eps_Phi
   use funit
   implicit none
   
contains

	@test
	subroutine test_set_eps_Phi()
	
		double precision :: eps_Phi_in
		eps_Phi_in = 0.8
		
		call set_eps_Phi(eps_Phi_in)
		
		@assertEqual(eps_Phi, eps_Phi_in, tolerance = 1e-13, message = "Testing test_set_eps_Phi")
	
	end subroutine test_set_eps_Phi

end module test_gorilla_settings_mod
