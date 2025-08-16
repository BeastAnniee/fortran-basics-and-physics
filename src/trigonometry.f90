        program trigonometry_triangle
            implicit none
            real :: c, beta, gamma, a, b, area
            real, parameter :: pi = 3.14159265
            integer :: opcion

            print *, 'Seleccione el caso:'
            print *, '1) Hipotenusa y angulo beta'
            print *, '2) Hipotenusa y angulo gamma'
            print *, '3) Catetos a y b'
            read(*,*) opcion

            select case (opcion)
                case (1)
                ! Caso (a): hipotenusa y angulo beta
                print *, 'Ingrese la hipotenusa (c):'
                read(*,*) c
                print *, 'Ingrese el angulo beta en grados:'
                read(*,*) beta
                beta = beta * pi / 180.0
                a = c * sin(beta)
                b = c * cos(beta)
                area = 0.5 * a * b
                gamma = asin(a / c) * 180.0 / pi
                print *, 'Cateto a =', a, 'm'
                print *, 'Cateto b =', b, 'm'
                print *, 'Area =', area, 'm^2'
                print *, 'Angulo gamma =', gamma, 'grados'
                case (2)
                ! Caso (b): hipotenusa y angulo gamma
                print *, 'Ingrese la hipotenusa (c):'
                read(*,*) c
                print *, 'Ingrese el angulo gamma en grados:'
                read(*,*) gamma
                gamma = gamma * pi / 180.0
                a = c * sin(gamma)
                b = c * cos(gamma)
                area = 0.5 * a * b
                beta = asin(b / c) * 180.0 / pi
                print *, 'Cateto a =', a, 'm'
                print *, 'Cateto b =', b, 'm'
                print *, 'Area =', area, 'm^2'
                print *, 'Angulo beta =', beta, 'grados'
                case (3)
                ! Caso (c): catetos a y b
                print *, 'Ingrese el cateto a:'
                read(*,*) a
                print *, 'Ingrese el cateto b:'
                read(*,*) b
                c = sqrt(a**2 + b**2)
                beta = acos(b / c) * 180.0 / pi
                gamma = acos(a / c) * 180.0 / pi
                area = 0.5 * a * b
                print *, 'Hipotenusa c =', c, 'm'
                print *, 'Angulo beta =', beta, 'grados'
                print *, 'Angulo gamma =', gamma, 'grados'
                print *, 'Area =', area, 'm^2'
                case default
                print *, 'Opcion no valida.'
            end select

            print *, 'Presiona ENTER para salir...'
            read(*,*)
        end program trigonometry_triangle