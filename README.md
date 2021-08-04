# PDDLExamples

If you're new to PDDL and want to try it out, you can use
[their online editor](http://editor.planning.domains/#), or download the
[VSCode extension](https://marketplace.visualstudio.com/items?itemName=jan-dolejsi.pddl).

## Resources and guides

To help you get set up, you can watch
[this youtube series](https://www.youtube.com/watch?v=XW0z8Oik6G8&list=PL1Q0jeuU6XppflOPFx1qQVuWbXTcjxevU)
which talks about tooling for PDDL.

For more examples, you can check out
[jan-dolejsi/vscode-pddl-samples](https://github.com/jan-dolejsi/vscode-pddl-samples/).

If you want a short tutorial that comes with an explained example, you can check
out [fareskalaboud/LearnPDDL](https://github.com/fareskalaboud/LearnPDDL).

## About these examples

In here, you'll find 2 examples,
[letseat](https://github.com/NeoVier/PDDLExamples/tree/main/letseat) and
[delivery-drivers](https://github.com/NeoVier/PDDLExamples/tree/main/delivery-drivers).

### Lets eat!

This is an example from
[fareskalaboud/LearnPDDL](https://github.com/fareskalaboud/LearnPDDL), with some
minor tweaks. If you want a more detailed exaplanation, go check out their guide!

### Delivery Drivers

This is a slighly more complex example, which simulates delivering cargo via
vehicles. Each vehicle has a capacity, which much be greater than (or equal to)
the size of what the vehicle wants to carry. In order to have greater
efficiency, each vehicle has a minimum distance they need to cover to make a
trip. That means that, if the cargo is not far enough from its destination, the
vehicle won't pick it up.

There are two problems related to this domain:

- [different-sizes](https://github.com/NeoVier/PDDLExamples/blob/main/delivery-drivers/different-sizes.pddl)
deals with multiple vehicles that can carry different-sized cargos, and travel
different lengths.
- [different-locations](https://github.com/NeoVier/PDDLExamples/blob/main/delivery-drivers/different-locations.pddl)
deals with multiple locations, simulating an airplane that can go to set
destinations, and needs to deliver cargo around the world.
