        program kinetic_equations_1D
            implicit none
            ! Declaración de variables reales
            real :: v0, a, t, x, x0
            real :: velocidad_f, posicion_f, vf_sqr, posicion_f2, posicion_f3
            character(len=10) :: unidad_pos = "m"
            character(len=10) :: unidad_vel = "m/s"
            character(len=10) :: unidad_acel = "m/s^2"
            ! Asignación de valores
            v0 = 5.0      ! velocidad_f inicial (m/s)
            a  = 2.0      ! aceleración (m/s^2)
            t  = 3.0      ! tiempo (s)
            x0 = 10.0     ! posición inicial (m)
            x  = 0.0      ! posición final (m)
            ! Cálculo de ecuaciones
            velocidad_f = v0 + a * t
            posicion_f = x0 + v0 * t + 0.5 * a * t**2
            vf_sqr = v0**2 + 2 * a * (x - x0)
            posicion_f2 = x0 + 0.5 * (v0 + velocidad_f) * t
            posicion_f3 = x0 + velocidad_f * t - 0.5 * a * t**2
            ! Mostrar resultados en pantalla
            print *, "Ecuacion: v = v0 + a*t"
            print *, "v0 = ", v0, unidad_vel, ", a = ", a, unidad_acel, ", t = ", t, "s"
            print *, "Resultado: v = ", velocidad_f, unidad_vel
            print *, "--------------------------------------"
            print *, "Ecuacion: x = x0 + v0*t + 0.5*a*t^2"
            print *, "x0 = ", x0, unidad_pos, ", v0 = ", v0, unidad_vel, ", t = ", t, "s, a = ", a, unidad_acel
            print *, "Resultado: x = ", posicion_f, unidad_pos
            print *, "--------------------------------------"
            print *, "Ecuacion: v^2 = v0^2 + 2a(x - x0)"
            print *, "v0 = ", v0, unidad_vel, ", a = ", a, unidad_acel, ", x = ", x, unidad_pos, ", x0 = ", x0, unidad_pos
            print *, "Resultado: v^2 = ", vf_sqr, unidad_vel//"^2"
            print *, "--------------------------------------"
            print *, "Ecuacion: x = x0 + 0.5*(v0 + v)*t"
            print *, "x0 = ", x0, unidad_pos, ", v0 = ", v0, unidad_vel, ", v = ", velocidad_f, unidad_vel, ", t = ", t, "s"
            print *, "Resultado: x = ", posicion_f2, unidad_pos
            print *, "--------------------------------------"
            print *, "Ecuacion: x = x0 + v*t - 0.5*a*t^2"
            print *, "x0 = ", x0, unidad_pos, ", v = ", velocidad_f, unidad_vel, ", t = ", t, "s, a = ", a, unidad_acel
            print *, "Resultado: x = ", posicion_f3, unidad_pos
            print *, "--------------------------------------"
            !Pause
            print *, "Presiona ENTER para salir..."
            read(*,*)
            stop
        end program kinetic_equations_1D