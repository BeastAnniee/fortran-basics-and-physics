        program chromatic_aberration
            implicit none
            real, parameter :: n_air = 1.0
            real, parameter :: n_quartz_400 = 1.4702
            real, parameter :: n_quartz_500 = 1.4624
            real :: theta_inc, theta_inc_rad
            real :: theta_refr_400, theta_refr_500, delta_theta
            integer :: i

            print *, 'Angulo de incidencia (Theta) variara de 0 deg a 90 deg en incrementos de 1.'
            print *, 'Resultados:'
            print *, 'Theta (deg)   Delta_theta (deg)'

            do i = 0, 90
                theta_inc = real(i)
                theta_inc_rad = theta_inc * 3.14159265 / 180.0
                ! Ley de Snell para cada longitud de onda
                theta_refr_400 = asin(n_air * sin(theta_inc_rad) / n_quartz_400) * 180.0 / 3.14159265
                theta_refr_500 = asin(n_air * sin(theta_inc_rad) / n_quartz_500) * 180.0 / 3.14159265
                delta_theta = abs(theta_refr_400 - theta_refr_500)
                print '(F6.1,3X,F12.6)', theta_inc, delta_theta
            end do

            print *, 'Presiona ENTER para salir...'
            read(*,*)
        end program chromatic_aberration