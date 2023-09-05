Algoritmo LavaAutosPuntoCom
    // Para solicitar turnos dia,hora,servicio
    Dimension turnos(98)
    Dimension dias(7) // turnos disponibles
    Dimension horas(14) // dias de la semana
    Dimension servicio(8) // horarios disponibles diarios
    Dimension turnosReservados(98) // Para llevar un registro de los turnos reservados
    Definir diaElegido, horaElegida, servicioElegido Como Cadena // opciones de servicios disponibles
    Definir opcionMenu, cantTurno Como Entero
    Definir turnoElegido Como Cadena
    Escribir 'Bienvenido a Lava Autos Punto Com!'
    Escribir '¿Qué desea realizar?'
    Escribir '1-Reserva de turnos'
    Escribir '2-Consultar Servicios disponibles'
    Escribir '3-Salir'
    Leer opcionMenu
    
    // Inicializar los turnos reservados como vacíos
    Para i <- 1 Hasta 98 Hacer
        turnosReservados[i] <- ''
    FinPara
    
    // Seleccionar turno Y servicio
    Repetir
        Repetir
            Si opcionMenu=1 Entonces
                dias[1] <- 'Lunes '
                dias[2] <- 'Martes '
                dias[3] <- 'Miércoles '
                dias[4] <- 'Jueves '
                dias[5] <- 'Viernes '
                dias[6] <- 'Sábado '
                dias[7] <- 'Domingo '
                
                horas[1] <- '7:00 AM'
                horas[2] <- '8:00 AM'
                horas[3] <- '9:00 AM'
                horas[4] <- '10:00 AM'
                horas[5] <- '11:00 AM'
                horas[6] <- '12:00 PM'
                horas[7] <- '13:00 PM'
                horas[8] <- '14:00 PM'
                horas[9] <- '15:00 PM'
                horas[10] <- '16:00 PM'
                horas[11] <- '17:00 PM'
                horas[12] <- '18:00 PM'
                horas[13] <- '19:00 PM'
                horas[14] <- '20:00 PM'
                
                servicio[1] <- 'Limpieza de Interior del Auto'
                servicio[2] <- 'Lavado de carrocería/chasis/moto'
                servicio[3] <- 'Limpieza de tapizados en general'
                servicio[4] <- 'Limpieza de Alfombra'
                servicio[5] <- 'Pulido de carrocería/cristales'
                servicio[6] <- 'Encerado'
                servicio[7] <- 'Teflonado'
                servicio[8] <- 'Cambio de aceite del filtro'
                
                // turno tomado
                cantTurno <- 1
                Repetir
                    Escribir 'Seleccione el día para el turno:'
                    Para i <- 1 Hasta 7 Hacer
                        Escribir i, '. ', dias[i]
                    FinPara
                    Leer diaElegido
                    Escribir 'Seleccione la hora para el turno:'
                    Para i <- 1 Hasta 14 Hacer
                        Escribir i, '. ', horas[i]
                    FinPara
                    Leer horaElegida
                    Escribir 'Seleccione el servicio deseado:'
                    Para i <- 1 Hasta 8 Hacer
                        Escribir i, '. ', servicio[i]
                    FinPara
                    Leer servicioElegido
                    turnoElegido <- concatenar(diaElegido, horaElegida)
                    
                    // Verificar si el turno ya está reservado
                    Existe <- Falso
                    Para i <- 1 Hasta cantTurno Hacer
                        Si turnos[i] = turnoElegido Entonces
                            Existe <- Verdadero // si ese turno ya está en el vector
                            Escribir 'El turno seleccionado no está disponible. Por favor, elija otra alternativa.'
						 //  Romper / Salir del bucle si el turno está ocupado
                        FinSi
                    FinPara
                    
                    Si No Existe Entonces
                        // Reservar el turno si no está ocupado
                        turnos[cantTurno] <- turnoElegido
                        // Registrar el turno como reservado
                        turnosReservados[cantTurno] <- turnoElegido
                        Escribir 'Reserva exitosa!'
						Escribir 'Su turno Elegido es para el ', dias[diaElegido], ' a las ', horas[horaElegida], ' H ', 'para realizar el servicio de ', servicio[servicioElegido] 
                        cantTurno <- cantTurno + 1
                    FinSi
                    
                    Escribir '¿Desea realizar otra operación? (1-Solicitar turno / 2-Listar servicios & tarifas / 3-Salir )'
                    Leer opcionMenu
                Hasta Que opcionMenu <> 1
            FinSi
        Hasta Que opcionMenu <> 1
        
        // Mantener catálogo
        Si opcionMenu = 2 Entonces
            cantidadProductos <- 1
            servicio[1] <- 'Limpieza de Interior del Auto $4500'
            servicio[2] <- 'Lavado de carrocería / chasis / moto $3000'
            servicio[3] <- 'Limpieza de tapizados en general $4000'
            servicio[4] <- 'Limpieza de Alfombra $2800'
            servicio[5] <- 'Pulido de carrocería & cristales $2500'
            servicio[6] <- 'Encerado $1900'
            servicio[7] <- 'Teflonado $2200'
            servicio[8] <- 'Cambio de aceite filtro $2400'
            Escribir 'Listado de servicios disponibles & tarifas '
            Para i <- 1 Hasta 8 Hacer
                Escribir i, '. ', servicio[i]
            FinPara
            Escribir '¿Desea solicitar un turno para alguno de estos servicios? (1-Sí / 3-No)'
            Leer opcionMenu
        FinSi
    Hasta Que opcionMenu = 3
    
    Escribir ' Gracias por elegir Lava Autos Punto Com, vuelva pronto! '
FinAlgoritmo