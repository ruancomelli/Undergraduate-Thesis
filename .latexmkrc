# This shows how to use the nomencl package for making a nomenclature
# with latexmk.  
# (See http://www.ctan.org/pkg/nomencl for information on the nomencl package.)


add_cus_dep("nlo", "nls", 0, "nlo2nls");
sub nlo2nls {
    system("makeindex $_[0].nlo -s nomencl.ist -o $_[0].nls -t $_[0].nlg");
}