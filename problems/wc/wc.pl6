#!/usr/bin/env perl6

sub MAIN (Str $file!) {
  die "Not a file" unless $file.IO.f;
  my ($lines, $words, $chars) = (0, 0, 0);

  for $file.IO.lines -> $line {
    $lines++;
    $words = $words + $line.lc.words.elems;
    $chars = $chars + (1 + $line.chars);
  }

  put "lines ($lines) words ($words) chars ($chars)";  
}
