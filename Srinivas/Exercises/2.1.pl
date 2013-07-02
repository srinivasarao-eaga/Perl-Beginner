#! /usr/bin/perl

# Reversing a list of strings

# This is how we declare arrays 
my @strings;

# Yes, you can chomp all the lines in shot, And yes, the <STDIN> in list context, reads
# all the lines till the End of file, which is Ctrl-Z in Windows and Ctrl-D in Unix

chomp(@strings = <STDIN>);

# 'reverse' in list context reverses all the lines, But in scalar context, it gives a single string 
# with all characters in reverse order.
# Ofcourse, you will have to re-assigne to the variable to persist the changes !!

@strings = reverse @strings;

# Prints all string white space seperated
# Basically the delimiter is value given by $" variable. You can always override this default value
# and customize your delimiter

print @strings;
