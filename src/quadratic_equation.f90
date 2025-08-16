        program quadratic_equation
            implicit none
            real :: a, b, c, discriminant, x1, x2

            print *, 'Programa para resolver ecuaciones cuadraticas: ax^2 + bx + c = 0'
            print *, 'Ingrese el valor de a:'
            read(*,*) a
            print *, 'Ingrese el valor de b:'
            read(*,*) b
            print *, 'Ingrese el valor de c:'
            read(*,*) c

            discriminant = b**2 - 4.0*a*c

            if (a == 0.0) then
                print *, 'No es una ecuacion cuadratica (a = 0).'
            else if (discriminant > 0.0) then
                x1 = (-b + sqrt(discriminant)) / (2.0*a)
                x2 = (-b - sqrt(discriminant)) / (2.0*a)
                print *, 'Dos soluciones reales:'
                print *, 'x1 =', x1
                print *, 'x2 =', x2
            else if (discriminant == 0.0) then
                x1 = -b / (2.0*a)
                print *, 'Una solución real doble:'
                print *, 'x =', x1
            else
                print *, 'Soluciones complejas:'
                print *, 'x1 =', -b/(2.0*a), ' + ', sqrt(-discriminant)/(2.0*a), 'i'
                print *, 'x2 =', -b/(2.0*a), ' - ', sqrt(-discriminant)/(2.0*a), 'i'
            end if

            print *, 'Presiona ENTER para salir...'
            read(*,*)
        end program quadratic_equation
