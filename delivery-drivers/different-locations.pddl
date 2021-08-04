(define (problem different-locations)
    (:domain delivery-drivers)
    (:objects
        airplane - vehicle
        first-cargo second-cargo third-cargo - cargo
        florianopolis sao-paulo new-york london amsterdam - location
    )

    (:init
        (on airplane florianopolis)

        (empty airplane)

        (on first-cargo florianopolis)
        (on second-cargo new-york)
        (on third-cargo london)

        (path florianopolis sao-paulo)
        (path sao-paulo florianopolis)
        (path sao-paulo new-york)
        (path new-york sao-paulo)
        (path sao-paulo amsterdam)
        (path amsterdam sao-paulo)
        (path amsterdam london)
        (path london amsterdam)
        (path london new-york)
        (path new-york london)

        (= (capacity airplane) 0)
        (= (minimum-distance airplane) 0)

        (= (size first-cargo) 0)
        (= (size second-cargo) 0)
        (= (size third-cargo) 0)
        (= (distance-from-destination first-cargo) 0)
        (= (distance-from-destination second-cargo) 0)
        (= (distance-from-destination third-cargo) 0)
    )

    (:goal
        (and
            (on first-cargo london)
            (on second-cargo florianopolis)
            (on third-cargo sao-paulo)
        )
    )
)
