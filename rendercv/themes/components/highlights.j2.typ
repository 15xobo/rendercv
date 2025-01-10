((* for item in entry.highlights *))
  ((* if loop.first *))
  #v(design-highlights-top-margin);#highlights(
  ((*- endif -*))
  ((* if item is iterable and item is not string and item is not mapping *))
    [<<item[0]>> #subhighlights(((* for subitem in item *))((* if loop.index > 1 *))[<<subitem >>],((* endif *))((* endfor *)))],
  ((*- else -*))
    [<<item>>], 
  ((*- endif -*))
  ((*- if loop.last -*))
  )
  ((* endif *))
((* endfor *))