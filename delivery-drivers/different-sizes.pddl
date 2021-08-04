(define (problem different-sizes)
    (:domain delivery-drivers)
    (:objects
        motorcycle truck airplane - vehicle
        first-cargo second-cargo third-cargo - cargo
        pickup-station dropoff-station - location
    )

    (:init
        (on motorcycle pickup-station)
        (on truck pickup-station)
        (on airplane pickup-station)

        (empty motorcycle)
        (empty truck)
        (empty airplane)

        (on first-cargo pickup-station)
        (on second-cargo pickup-station)
        (on third-cargo pickup-station)

        (path pickup-station dropoff-station)
        (path dropoff-station pickup-station)

        (= (capacity motorcycle) 1)
        (= (capacity truck) 2)
        (= (capacity airplane) 10)
        (= (minimum-distance motorcycle) 0)
        (= (minimum-distance truck) 500)
        (= (minimum-distance airplane) 10000)

        (= (size first-cargo) 1)
        (= (size second-cargo) 2)
        (= (size third-cargo) 3)
        (= (distance-from-destination first-cargo) 250)
        (= (distance-from-destination second-cargo) 1000)
        (= (distance-from-destination third-cargo) 50000)

    )
    (:goal
        (and
            (on first-cargo dropoff-station)
            (on second-cargo dropoff-station)
            (on third-cargo dropoff-station)
        )
    )
)
