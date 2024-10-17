is_a(piano, keyboard_instrument).
is_a(guitar, string_instrument).
is_a(violin, string_instrument).
is_a(flute, woodwind_instrument).
is_a(saxophone, woodwind_instrument).
is_a(trumpet, brass_instrument).
is_a(trombone, brass_instrument).
is_a(drum, percussion_instrument).
is_a(cymbals, percussion_instrument).
is_a(electric_guitar, guitar).
is_a(acoustic_guitar, guitar).
is_a(electronic_keyboard, keyboard_instrument).
is_a(bass_guitar, guitar).
is_a(harmonica, wind_instrument).
is_a(clarinet, woodwind_instrument).
is_a(organ, keyboard_instrument).

part_of(keyboard, piano_case).
part_of(strings, guitar).
part_of(body, guitar).
part_of(tone_holes, flute).
part_of(valve, trumpet).
part_of(piston, trombone).
part_of(drumhead, drum).
part_of(cymbal_bell, cymbals).
part_of(fretboard, bass_guitar).
part_of(reed, clarinet).
part_of(piano_case, piano).
part_of(hardware, keyboard).
part_of(pickups, electric_guitar).
part_of(frets, guitar).
part_of(bow, violin).
part_of(fingerboard, violin).
part_of(mouthpiece, saxophone).
part_of(cylinder, trumpet).
part_of(bell, trumpet).
part_of(bell, trombone).
part_of(hoop, drum).
part_of(stand, cymbals).
part_of(cymbal_ride, cymbals).
part_of(speaker, electronic_keyboard).
part_of(keyboard, electronic_keyboard).
part_of(keys, keyboard).


made_of(wood, piano).
made_of(wood, guitar).
made_of(steel, electric_guitar).
made_of(wood, violin).
made_of(metal, flute).
made_of(brass, trumpet).
made_of(brass, trombone).
made_of(skin, drum).
made_of(brass, cymbals).

made_of(plywood, piano).
made_of(solid_wood, guitar).
made_of(electric_components, electric_guitar).
made_of(fiberglass, drum).
made_of(brass_alloy, trumpet).
made_of(brass_alloy, trombone).
made_of(wood, clarinet).
made_of(wood, saxophone).
made_of(metal, cymbals).

made_of(wood, plywood).
made_of(wood, solid_wood).
made_of(metal, brass_alloy).
made_of(metal, steel).
made_of(skin, animal_hide).


is_a_all(X, Z) :- is_a(X, Z).
is_a_all(X, Z) :- is_a(X, Y), is_a_all(Y, Z).

part_of_all(X, Z) :- part_of(X, Z).
part_of_all(X, Z) :- part_of(X, Y), part_of_all(Y, Z).

part_of_all(X, Z) :- is_a(X, Y), part_of(Y, Z).

made_of_all(X, Z) :- made_of(X, Z).
made_of_all(X, Z) :- made_of(X, Y), made_of_all(Y, Z).
