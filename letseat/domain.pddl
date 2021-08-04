(define (domain letseat)

    (:requirements :typing)

    (:types
        location locatable eater - object
        bot cupcake - locatable
        person - eater
    )

    (:predicates
        (on ?obj - locatable ?loc - location)
        (holding ?arm - bot ?cupcake - cupcake)
        (arm-empty)
        (path ?location1 - location ?location2 - location)
        (used-to-eat ?loc - location)
        (eaten ?person - eater ?cupcake - cupcake)
    )

    (:action pick-up
        :parameters (?arm - bot ?cupcake - cupcake ?loc - location)
        :precondition (and
            (on ?arm ?loc)
            (on ?cupcake ?loc)
            (arm-empty)
        )
        :effect (and
            (not (on ?cupcake ?loc))
            (holding ?arm ?cupcake)
            (not (arm-empty))
        )
    )

    (:action drop
        :parameters (?arm - bot ?cupcake - cupcake ?loc - location)
        :precondition (and
            (on ?arm ?loc)
            (holding ?arm ?cupcake)
        )
        :effect (and
            (on ?cupcake ?loc)
            (arm-empty)
            (not (holding ?arm ?cupcake))
        )
    )

    (:action move
        :parameters (?arm - bot ?from - location ?to - location)
        :precondition (and
            (on ?arm ?from)
            (path ?from ?to)
        )
        :effect (and
            (not (on ?arm ?from))
            (on ?arm ?to)
        )
    )

    (:action eat
        :parameters (?person - eater ?cupcake - cupcake ?loc - location)
        :precondition (and
            (on ?cupcake ?loc)
            (used-to-eat ?loc))
        :effect (and
            (not (on ?cupcake ?loc))
            (eaten ?person ?cupcake)
        )
    )
)
