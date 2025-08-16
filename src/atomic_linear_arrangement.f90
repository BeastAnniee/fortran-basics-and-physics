        program atomic_linear_arrangement
            implicit none
            integer :: N, i
            real :: bond_length, x
            character(len=2) :: element
                character(len=100) :: filename, outpath
            integer :: unit

            print *, 'Enter the chemical element (e.g. H, C, O, Fe):'
            read(*,'(A)') element
            print *, 'Enter the bond length (in angstroms):'
            read(*,*) bond_length
            print *, 'Enter the number of atoms (N):'
            read(*,*) N
                print *, 'Enter the output filename (.xyz):'
                read(*,'(A)') filename
                outpath = 'xyz_output/' // trim(filename)
                open(newunit=unit, file=outpath, status='replace')
                write(unit,'(I0)') N
                write(unit,'(A)') 'Linear arrangement of '//trim(element)//' atoms'
                do i = 1, N
                    x = (i-1) * bond_length
                    write(unit,'(A,1X,F12.6,1X,F12.6,1X,F12.6)') trim(element), x, 0.0, 0.0
                end do
                close(unit)
                print *, 'File ', trim(outpath), ' generated successfully.'
                print *, 'Press ENTER to exit...'
                read(*,*)
        end program atomic_linear_arrangement