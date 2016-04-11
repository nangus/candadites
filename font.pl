#!/usr/bin/perl
open IN, "$ARGV[0]";
%in=();
while($s=<IN>){
  chomp $s;
  @a=split("\t", $s);
  $in{$a[1]}=$a[0];
}
close IN;
open IN, 'independence.full';
while($s=<IN>){
  chomp $s;
  foreach $a(split(" ",$s)){
    if($in{$a}){
      $size=$in{$a}*12;
      print "<font size='".$size."px'>".$a." </font>";
    }else{
      print "<font size='1px'>".$a." </font>";
    }
  }
  print "<p>\n";

}
close IN;
