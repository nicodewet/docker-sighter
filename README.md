# docker-sighter

This repo is a recipe for building a *Sighter Docker Image* from scratch for continuous deployment pipeline flow assurance.

The Sighter Docker Image, which is also benign by definition, will flow from the start of the pipeline to the very end, namely production.  

## Defining The Phrase *Sighter Docker Image*

When it comes to small arms, the act of sighting refers to setting the sights of the fire arm in order to achieve a desired level of accuracy.

In the context of a continuous deployment pipeline with linux hosts and Docker Engine as its foundational elements, a sighter refers to benign docker 
image produced purely for the purpose of confirming that your pipeline is functional.

## Defining The Phrase *Benign Docker Image*

A Benign Docker Image in an enterprise context refers to an image baked in-house that is of minimal size and complexity.

A Benign Docker Image is also an image that is trivial to reason about, and so it should simply print out a familiar static message to the standard 
output stream, no more, no less.

The motivation behind baking the image in-house is two-fold. The first reason is because you'll be baking and publishing images in-house anyway and 
the second reason is because you'll know what the image does with absolute certainty so concerns such as security can be put aside. Moreover, your 
Benign Docker Image will be comprised of a single read-only layer with its own unique cryptographic content hash leveraged by the Docker 1.10+ 
content addressable storage model which guarantees data integrity after pull, push, load and save operations.    

The motivation behind the minimal size of the image is because the primary concern is confirming that the pipeline is flowing, and not its throughput.
