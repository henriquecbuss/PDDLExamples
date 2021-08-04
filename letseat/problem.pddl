(define (problem letseat)
    (:domain letseat)
    (:objects
        arm - bot
        cupcake second-cupcake - cupcake
        table - location
        plate - location
        person - person
    )

    (:init
        (on arm table)
        (on cupcake table)
        (on second-cupcake table)
        (arm-empty)
        (path table plate)
        (path plate table)
        (used-to-eat plate)
    )
    (:goal
        (and
            (eaten person cupcake)
            (eaten person second-cupcake)
        )
    )
)
