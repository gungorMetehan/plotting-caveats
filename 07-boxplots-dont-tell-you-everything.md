# Boxplots Don't Tell You Everything

A box plot (or boxplot) is a way to show where the data sits, how spread out it is, and whether it’s skewed, by looking at quartiles. 
Box plots are pretty handy for getting a quick sense of how a variable is distributed. But here’s the catch: reading them properly does take a bit of background knowledge. 
Without it, someone could easily get the wrong idea just by looking at the boxes.
Let’s check out the example below.

Here we’ve got three groups of individuals/objects, and we can see how their values are spread out. Groups A and B look kind of similar overall, though group A has a few outliers. 
Group C, on the other hand, looks a bit different. Now, imagine if we could actually see the data points too—how would that change what we say?

In this version, the data points have been added with a little “jitter.” That means the points themselves aren’t perfectly precise, but they’re enough to give us a good idea of what’s going on. 
Looking at this graph, we notice that A and B have close median values, but their spreads are quite different—B even shows a bimodal distribution. 
And group C? It doesn’t have many data points at all. One thing to remember: box plots don’t tell you how big the sample size is.

That’s where violin plots come in. They can show the distribution shape that box plots hide. And if you don’t have too many data points, you can even add them (again with jitter) right onto the violin plot.

**Conclusion:** Box plots are a great tool in descriptive stats, but they have limits. 
If the person looking at them doesn’t know much about the dataset, they might make the wrong call—since box plots don’t show sample size or the exact distribution. 
To avoid that, you can add the data points directly, switch to violin plots, or even combine the two for a fuller picture.
