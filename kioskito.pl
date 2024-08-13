% dodain atiende lunes, miércoles y viernes de 9 a 15.
% lucas atiende los martes de 10 a 20
% juanC atiende los sábados y domingos de 18 a 22.
% juanFdS atiende los jueves de 10 a 20 y los viernes de 12 a 20.
% leoC atiende los lunes y los miércoles de 14 a 18.
% martu atiende los miércoles de 23 a 24 .


% Punto 1: calentando motores (2 puntos)
% Definir la relación para asociar cada persona con el rango horario que cumple, e incorporar las siguientes cláusulas:
% ● vale atiende los mismos días y horarios que dodain y juanC.
% ● nadie hace el mismo horario que leoC
% ● maiu está pensando si hace el horario de 0 a 8 los martes y miércoles
% En caso de no ser necesario hacer nada, explique qué concepto teórico está relacionado y justifique su respuesta

% cumpleHorario(Persona, Dia, horario(Desde, Hasta)).
cumpleHorario(dodain, lunes, horario(9, 15)).
cumpleHorario(dodain, miércoles, horario(9, 15)).
cumpleHorario(dodain, viernes, horario(9, 15)).
cumpleHorario(lucas, martes, horario(10, 20)).
cumpleHorario(juanC, sabado, horario(18, 22)).
cumpleHorario(juanC, domingo, horario(18, 22)).
cumpleHorario(juanFdS, jueves, horario(10, 20)).
cumpleHorario(juanFdS, viernes, horario(12, 22)).
cumpleHorario(leoC, lunes, horario(14, 22)).
cumpleHorario(leoC, miercoles, horario(14, 22)).
cumpleHorario(martu, miercoles, horario(23, 24)).

cumpleHorario(vale, Dia, horario(Desde, Hasta)):-
    cumpleHorario(dodain, Dia, horario(Desde, Hasta)).
cumpleHorario(vale, Dia, horario(Desde, Hasta)):-
    cumpleHorario(juanC, Dia, horario(Desde, Hasta)).