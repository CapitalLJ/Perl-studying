#!/usr/bin/perl
@n=(A,T,G,C);

for $q (0,1,2,3){
    for $w (0,1,2,3){
        for $e (0,1,2,3){
            # for $r (0,1,2,3){
            #     push @N , "@n[$q]@n[$w]@n[$e]@n[$r]" ;
            # }
             push @N , "@n[$q]@n[$w]@n[$e]" ;
        }
    }
}
while(<>){
    push @T , $_ ;
}


for $a (@N){
    for(@T){
        chomp($_);
        if(/$a/i){
            $number{$a}+=1;
        }
    }
}

for (@N){
    print "$_\t$number{$_}\n"
}
