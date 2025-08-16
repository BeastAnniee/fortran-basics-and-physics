        program parabolic_movement
            implicit none
            real, parameter :: g = 9.81 ! gravedad (m/s^2)
            real :: v0, theta, theta_rad
            real :: d_max, h_max
            integer :: i

            print *, 'Ingrese la rapidez inicial (m/s):'
            read(*,*) v0
            print *, 'Angulo (theta) variará de 0° a 90° en incrementos de 1°.'
            print *, 'Resultados:'
            print *, 'Angulo (°)   Distancia maxima (m)   Altura maxima (m)'

            do i = 0, 90
                theta = real(i)
                theta_rad = theta * 3.14159265 / 180.0
                d_max = (v0**2 * sin(2.0 * theta_rad)) / g
                h_max = (v0**2 * (sin(theta_rad))**2) / (2.0 * g)
                print '(F6.1,3X,F12.4,3X,F12.4)', theta, d_max, h_max
            end do

            print *, 'Presiona ENTER para salir...'
            read(*,*)
        end program parabolic_movement
