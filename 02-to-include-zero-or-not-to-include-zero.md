# **to Include Zero or Not to Include Zero, That is the Question**

One of the most controversial issues in data visualization is that the Y-axis does not start at 0. So, should the Y-axis start at 0? Well… It depends.

First, let's look at the graph in the tweet below.

![trump](https://github.com/user-attachments/assets/f301b33c-4b67-4662-b6ba-055b2b638c45)

[Source: reddit](https://www.reddit.com/r/dataisugly/comments/1cc4rbn/crushing_victory/)

It turns out that Trump won the election. There is a 1% difference between Trump and Biden. Both the headline and the visual are intended to deceive the audience. While the difference between the two rates is actually 1%, the biased data visualization makes this difference seem like 100%. In short, the Y-axis in barplots should start at 0 because the purpose of using barplots in data visualization is comparing the heights of the bars.
In barplot data visualization, as in this example, not starting the Y-axis at 0 often misleads the audience. If we had visualized this case more appropriately, we would have obtained a plot similar to the one below.

![barplot_trump](https://github.com/user-attachments/assets/67b8f5ef-179b-43fc-9301-0ab68519d179)

As can be seen, it is a requirement that the Y-axis starts at 0 in barplots. The purpose of using a barplot (or lollipop plot) in visualization is to compare the heights of the bars. However, it is a controversial issue in the literature that the Y-axis does not start at 0 in line plots (used to compare numerical data). Let's examine the plot below (based on fake data) to understand why.
Let's say, the change in temperature in a region (Region X) over the years will be visualized. Using line plots is one of the most suitable options for this. A result like the one below can be obtained.

![lineplot1](https://github.com/user-attachments/assets/e18818a9-2144-432f-8a37-7e460698fbf1)

When you look at the plot, you don't see a big problem in terms of data visualization in general. However, the plot doesn't convey the message easily at first glance. If we don't start the Y-axis at 0, a plot like the one below will be obtained.

![lineplot2](https://github.com/user-attachments/assets/6eee4dd9-18e5-4c95-9623-d6b499a2b1cd)

As seen in the plot above, increasing of the temperature in Region X can be considered a significant sign of climate change by many people. This seemingly small difference is quite important to many people. For example, there may be a high correlation between the temperature rise and the number of wildfires.
In short, the Y-axis in line plots does not have to start at 0. From my point of view, when making this decision, it is useful to pay attention to the following: (1) everyone reading the plot should be aware of that the Y-axis does not start at 0, (2) the small differences in the plot should be noticed by the audience with this change, (3) it should be ensured that none of data is lost.

**Extra:** In line plots, sometimes more than one categorical variable can be visualized simultaneously (plotting multiple lines). In these cases, multiple lines may overlap and become indistinguishable from each other (spaghetti plot). In this case, not starting the Y-axis at 0 may solve this complex problem.
