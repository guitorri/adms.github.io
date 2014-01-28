#!/bin/sh 
eval 'exec perl -S -x -w $0 ${1+"$@"} ' 
#!perl

# simple Perl script to parse zspice output
# Author: Lisichkin Ilya (24xx@mail.ru) 

#--------------------------------------------#
#             starting zspice                #
#--------------------------------------------#
$step_val=0.5;
for($val=0;$val<4;$val++){
open TEST,">./$ARGV[0]"or die "!!! I can't !!!";
print TEST "
//
//
//

mode=circuit
  name=dc_Vg_Vd
  mode=load
    file=MyMOS1.zsp
  mode=model
    name=mymos1
    module=MyMOS1
    mode=parameter
	name=gender
	value=-1 
    mode=parameter
	name=gamma
	value=0
  mode=parameter
        name=vto
        value=-99
  mode=parameter
        name=lambda
        value=1e-2
  mode=model
    name=vsource
    module=vs

  mode=instance
    name=mos1
    modelID=mymos1
    mode=topology
      mode=node
        name=d
	location=1
      mode=node
        name=g
	location=2
      mode=node
        name=s
	location=0
      mode=node
        name=b
	location=0


  mode=instance
    name=vg
    modelID=vsource
    mode=parameter
      name=dc
      value=$val
    mode=topology
      mode=node
        name=p
	location=2
      mode=node
        name=n
	location=0

  mode=instance
    name=vd
    modelID=vsource
    mode=parameter
      name=dc		     
      value=0
    mode=topology
      mode=node
        name=p
        location=1
      mode=node
        name=n
        location=0
									 
   mode=dc
     mode=sweep
       name=vd:dc
       start=0.0
       end=5.0
       step=0.1
     
     mode=save
     name=mos1:gm
";
system("zspice $ARGV[0] 1>& temp.log");

#--------------------------------------------#
#             parsing temp file               #
#--------------------------------------------#

$test = $ARGV[0];
$folder = "test";

open  FILE, "<./temp.log"  or die "!!! I can't !!!";
open  GR, ">>./$folder/$test.gr" or die "!!! I can't open GR !!!";
$i=0;
$j=0;
while(  $string = <FILE> )
  { 
    if ($string =~ m/dc/)
      {
        chomp($string);
	@word=split(/ /,$string,3);
$dc[$i]=$word[2];

$i++;
      } 

    if ($string =~ m/gm/)
      {
        chomp($string);
        @word=split(/ /,$string,3);
$Ids[$j]=$word[2];
$j++;
	} 

}

$i=0;
while($dc[$i]) 
{print GR "$dc[$i] $Ids[$i] \n";$i++;
}
print GR "\n";
close GR;
close FILE;
close TEST;
}
#--------------------------------------------#
#             starting xgraph                #
#--------------------------------------------#
`xmgrace ./$folder/$test.gr &`;
`rm ./$folder/$test.gr`;
