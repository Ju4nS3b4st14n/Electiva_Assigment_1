library(nycflights13)
library(tidyverse)

exercise_flight <- flights
filter(flights, month == 1, day == 1)

#5.2.4 Encuentra todos los vuelos que
#1.1.Tuvo retraso de llegada
answer_one <- filter(exercise_flight, arr_delay >= 120 )
#1.2.Vuelo a Houston
answer_two <- filter(exercise_flight, dest == "HOU")
#1.3.Fueron operado por United, American o Delta
answer_three <- filter(exercise_flight, carrier == "UA" | carrier == "AA" | carrier == "DL")
#1.4.Salida en verano (julio, agosto y septiembre)
answe_four <- filter(exercise_flight, month == 7 | month == 8 | month == 9)
#1.5.Llegó mas de dos horas tarde, pero no se fue tarde
answer_five <- filter(exercise_flight, arr_delay >= 120 & dep_delay <= 0)
#1.6. Se retrasaron al menos una hora, pero recuperaron más de 30 minutos de vuelo
answer_six <- filter(exercise_flight, dep_delay == 60)
#1.7. Salida entre la medianoche y las 6 a.m.
answer_seven <- filter(exercise_flight, dep_time >= 0000 & dep_time <= 0600)


#5.3.1. Ejercicios
#1. ¿Cómo podría utilizar arrange()para ordenar todos los valores que faltan al principio? (Sugerencia: use is.na()).
Answer_one <- is.na(exercise_flight)
arrange(Anser_one)
#2. Ordenar flightspara encontrar los vuelos más retrasados. Encuentra los vuelos que salieron antes.
Answer_two <- arrange(exercise_flight, desc(dep_delay))
#3. Ordenar flightspara encontrar los vuelos más rápidos (velocidad más alta).
Answer_three <- arrange(exercise_flight, air_time)
#4. ¿Qué vuelos viajaron más lejos? ¿Cuál viajó menos?
Answer_four <- arrange(exercise_flight, desc(distance))


#5.4.1. Ejercicios
#2. ¿Qué sucede si incluye el nombre de una variable varias veces en una select()llamada?
answer_t <- select(exercise_flight, year, day, year)
#3. Qué hace la any_of()función? ¿Por qué podría ser útil junto con este vector?
answer_th <- exercise_flight %>%
  select(any_of(c("year", "month", "day", "dep_delay", "arr_delay")))
#4.
answer_f <- select(exercise_flight, contains("TIME"))


#5.5.2 Ejercicios
#1.

#2. Comparar air_timecon arr_time - dep_time. Que esperas ver? ¿Que ves? ¿Qué necesitas hacer para arreglarlo?
Answer_t <- transmute(exercise_flight, air_time, gain = arr_time - dep_time)


#5.6.7 Ejercicios
#1.
