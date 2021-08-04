(define (domain delivery-drivers)

    (:requirements :typing)

    (:types
        location locatable - object
        cargo vehicle - locatable
    )

    (:predicates
        (on ?obj - locatable ?loc - location)
        (holding ?vehicle - vehicle ?cargo - locatable)
        (empty ?vehicle - vehicle)
        (path ?location1 - location ?location2 - location)
    )

    (:functions
        (size ?cargo - cargo)
        (capacity ?vehicle - vehicle)
        (minimum-distance ?vehicle - vehicle)
        (distance-from-destination ?cargo - cargo)
    )

    (:action pick-up
        :parameters (?vehicle - vehicle ?cargo - cargo ?loc - location)
        :precondition (and
            (on ?vehicle ?loc)
            (on ?cargo ?loc)
            (empty ?vehicle)
            (<= (size ?cargo) (capacity ?vehicle))
            (<= (minimum-distance ?vehicle) (distance-from-destination ?cargo))
        )
        :effect (and
            (not (on ?cargo ?loc))
            (holding ?vehicle ?cargo)
            (not (empty ?vehicle))
        )
    )

    (:action drop
        :parameters (?vehicle - vehicle ?cargo - locatable ?loc - location)
        :precondition (and
            (on ?vehicle ?loc)
            (holding ?vehicle ?cargo)
        )
        :effect (and
            (on ?cargo ?loc)
            (empty ?vehicle)
            (not (holding ?vehicle ?cargo))
        )
    )

    (:action move
        :parameters (?vehicle - vehicle ?from - location ?to - location)
        :precondition (and
            (on ?vehicle ?from)
            (path ?from ?to)
        )
        :effect (and
            (not (on ?vehicle ?from))
            (on ?vehicle ?to)
        )
    )
)
