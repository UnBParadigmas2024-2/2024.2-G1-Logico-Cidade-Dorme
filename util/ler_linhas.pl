/* Ref: https://www.swi-prolog.org/pldoc/doc_for?object=read_string/3 */

/* lê linhas em um arquivo e cria uma lista */
file_lines(File, Lines) :-
    setup_call_cleanup(open(File, read, In),
       stream_lines(In, Lines),
       close(In)).

stream_lines(In, Lines) :-
    read_string(In, _, Str),
    split_string(Str, "\n", "", Lines).
