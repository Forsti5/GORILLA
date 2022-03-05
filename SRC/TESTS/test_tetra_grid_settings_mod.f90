module test_tetra_grid_settings_mod
   use tetra_grid_settings_mod
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
   
   @test
   subroutine test_load_tetra_grid_inp()
   	
   	double precision :: sfc_s_min_compare
   	
   	call load_tetra_grid_inp()
   	
   	sfc_s_min_compare = 0.1
   	
   	@assertTrue(boole_n_field_periods)
   	@assertFalse(boole_write_mesh_obj)
   	@assertEqual(filename_mesh_rphiz, 'mesh_rphiz.obj')
   	@assertEqual(filename_mesh_sthetaphi, 'mesh_sthetaphi.obj')
   	@assertEqual(g_file_filename, 'g_file_for_test.nc')
   	@assertEqual(grid_kind, 3)
   	@assertEqual(n1, 100)
   	@assertEqual(n2, 30)
   	@assertEqual(n3, 30)
   	@assertEqual(n_field_periods_manual, 1)
   	@assertEqual(netcdf_filename, 'MHD_EQUILIBRIA/netcdf_file_for_test.nc')
   	! Discuss with Michael
   	@assertEqual(sfc_s_min, sfc_s_min_compare, tolerance=1e-8) 
   	@assertTrue(theta0_at_xpoint)
   	@assertEqual(theta_geom_flux,1)
   	
   end subroutine test_load_tetra_grid_inp
   
end module test_tetra_grid_settings_mod
