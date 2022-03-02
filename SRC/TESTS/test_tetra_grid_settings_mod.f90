module test_tetra_grid_settings_mod
   use tetra_grid_settings_mod, only: set_n_field_periods, n_field_periods, set_grid_size, grid_size
   use funit
   implicit none
   
contains

   @test
   subroutine test_set_n_field_periods()
   
   	call set_n_field_periods(5)
   	@assertEqual(n_field_periods, 5, message = "Testing set_n_field_periods")
   
   end subroutine test_set_n_field_periods
   
   @test
   subroutine test_set_grid_size()
   
   	call set_grid_size([1,2,3])
   	@assertEqual(grid_size, [1,2,3], message = "Testing set_grid_size")
   
   end subroutine test_set_grid_size
   
end module test_tetra_grid_settings_mod
