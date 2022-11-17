#!usr/bin/perl
while(<>){
    if(/>/){
        print "\t";
    }else{
        print $_;
    }
}
