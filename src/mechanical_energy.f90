        program mechanical_energy
            implicit none
            real, parameter :: g = 9.81 ! aceleración de la gravedad (m/s^2)
            real :: m, h, v
            real :: U, K, E

            print *, 'Ingrese la masa del objeto (kg):'
            read(*,*) m
            print *, 'Ingrese la altura (m):'
            read(*,*) h
            print *, 'Ingrese la velocidad (m/s):'
            read(*,*) v

            U = m * g * h
            K = 0.5 * m * v**2
            E = U + K

            print *, 'Energia potencial (U) =', U, 'J'
            print *, 'Energia cinetica (K) =', K, 'J'
            print *, 'Energia mecanica (E) =', E, 'J'
            print *, 'Presiona ENTER para salir...'
            read(*,*)
        end program mechanical_energy
