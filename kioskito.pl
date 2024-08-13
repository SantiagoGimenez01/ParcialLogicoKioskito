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
cumpleHorario(dodain, miercoles, horario(9, 15)).
cumpleHorario(dodain, viernes, horario(9, 15)).
cumpleHorario(lucas, martes, horario(10, 20)).
cumpleHorario(juanC, sabado, horario(18, 22)).
cumpleHorario(juanC, domingo, horario(18, 22)).
cumpleHorario(juanFdS, jueves, horario(10, 20)).
cumpleHorario(juanFdS, viernes, horario(12, 22)).
cumpleHorario(leoC, lunes, horario(14, 22)).
cumpleHorario(leoC, miercoles, horario(14, 22)).
cumpleHorario(martu, miercoles, horario(23, 24)).

% vale hace los mismos dias y horarios que dodain y juanC:
cumpleHorario(vale, Dia, horario(Desde, Hasta)):-
    cumpleHorario(dodain, Dia, horario(Desde, Hasta)).
cumpleHorario(vale, Dia, horario(Desde, Hasta)):-
    cumpleHorario(juanC, Dia, horario(Desde, Hasta)).

% nadie hace el mismo horario que leoC:
% Ya con la base de conocimientos y los hechos que modelamos podemos ver que nadie hace el mismo horario que juanC,
% no escribimos nada mas ya que al funcionar prolog con el principio de universo cerrado ya sabe que nadie hacer el mismo horario que juanC
% al no haber escrito ningun hecho que haga verdadera esa consigna

% maiu está pensando si hace el horario de 0 a 8 los martes y miércoles
% No escribo nada ya que al no ser un HECHO, ya que lo esta pensando, todavia no puedo confirmar que Maiu va a cumplir con ese horario.

% Punto 2: quién atiende el kiosko... (2 puntos)
% Definir un predicado que permita relacionar un día y hora con una persona, en la que dicha persona atiende el kiosko. 
% Algunos ejemplos:
% - si preguntamos quién atiende los lunes a las 14, son dodain, leoC y vale
% - si preguntamos quién atiende los sábados a las 18, son juanC y vale
% - si preguntamos si juanFdS atiende los jueves a las 11, nos debe decir que sí.
% - si preguntamos qué días a las 10 atiende vale, nos debe decir los lunes, miércoles y viernes.
% El predicado debe ser inversible para relacionar personas y días.

% atiendeDiaHorario(Persona, Dia, Hora)
atiendeDiaHorario(Persona, Dia, Hora):-
    cumpleHorario(Persona, Dia, horario(Desde, Hasta)),
    between(Desde, Hasta, Hora).
    