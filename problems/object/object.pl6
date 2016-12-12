#!/usr/bin/env perl6

enum Type <Rose Sunflower Tree Fern Moss>;
enum Color  <Red Green Yellow Blue Pink Violet>;
enum Site <Mountain Spring Valley River Meadow>;

class Plant {
    
    has Type $.type is required;
    has Color $.color is required;
    has Str $.person is required;
    has Str $.site is required;


    method pick {
        sprintf "%s %s %s" ,
                  $!type,
                  $!color,
    
    }

    my Plant $plant1 .= new(type => Rose, color => Pink, year => 1960, person => 'Julie Gold', site => Meadow);
    my Plant $plant2 .= new(type => Sunflower, color => Yellow, year => 1920, owner => 'LaFonda Schenk', site => Valley);
    my Plant $plant3 .= new(type => Tree, color => Green, year => 1934, owner => 'Alber Foss', site => Mountain);


    for $plant1, $plant2, $plant3 {

        printf "\n%s has picked : %s in the state of %s.\n", .person, .state;
    }


}
