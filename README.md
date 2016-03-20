# docker-sighter

A sighter docker image built from scratch for continuous deployment pipeline flow assurance.

## Defining the phrase sighter docker image

When it comes to small arms, the act of sighting refers to setting the sights of the fire arm in order to achieve a desired level of accuracy.

In the context of a continuous deployment pipeline with linux hosts and docker engine as its foundational elements, a sighter refers to benign docker 
image produced purely for the purpose of confirming that your pipeline is functional.

## Defining the phrase benign docker image

A benign docker image in an enterprise context refers to an image baked in-house that is of minimal size and complexity.

A benign docker image is also an image that is trivial to reason about, and so it should simply print out a familiar static message to the standard 
output stream, no more, no less.

The motivation behind baking the image in-house is two-fold. The first reason is because you'll be baking and publishing images in-house anyway and 
the second reason is because you'll know what the image does with absolute certainty so concerns such as security can be put aside.

The motivation behind the minimal size of the image is because the primary concern is confirming that the pipeline is flowing, and not its throughput.
