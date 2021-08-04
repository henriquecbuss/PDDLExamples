(define (problem letseat)
    (:domain letseat)
    (:objects
        arm - robot
        cupcake secondcupcake - cupcake
        table - location
        plate - location
        person - person
    )

    (:init
        (on arm table)
        (on cupcake table)
        (on secondcupcake table)
        (arm-empty)
        (path table plate)
        (path plate table)
        (used-to-eat plate)
    )
    (:goal
        (and
            (eaten person cupcake)
            (eaten person secondcupcake)
        )
    )
)
