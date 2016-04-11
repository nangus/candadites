#!/usr/bin/perl
open IN, "$ARGV[0]";
@in=<IN>;
close IN;
%in=();
foreach $in(@in){
  chomp($in);
  @a=split("\t",$in);
  $in{$a[1]}=$a[0];
}
open IN, "independence";
@in=<IN>;
close IN;
foreach $in(@in){
  chomp($in);
  @a=split("\t",$in);
  #print $in{$a[1]}."\t".$a[1]."\n";
  if ($in{$a[1]}){
    $num=$a[0]/$in{$a[1]};
    print $num."\t".$a[1]."\n";
  } else {
    print 0.0."\t".$a[1]."\n"
  }
}
