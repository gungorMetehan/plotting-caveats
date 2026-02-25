# Radial Barplots Look Cool But Are They Honest?

A radial barplot is a variation of a bar chart in which bars are arranged around a circle and drawn using polar coordinates instead of a Cartesian axis. Each bar extends outward from a central point, and its length represents the magnitude of a value.

It wouldn’t be wrong to say these plots are visually appealing. They do look nice. You may have seen this type of plot in magazines, newspapers, or TV programs. When we encounter a fancy-looking plot, one of the first questions we should ask is: Could this lead me to misinterpret the data? Unfortunately, radial barplots can sometimes lead to misleading interpretations. Since they are displayed on a polar coordinate system, two bars with equal values may appear to have different lengths. Among two bars with the same value, the one positioned closer to the outer edge of the plot will look longer. This can result in incorrect interpretations of the data.

For example, let’s visualize the number of championships won by six teams in the Turkish Super League using a radial barplot.

<img width="1000" height="750" alt="radial-plot" src="https://github.com/user-attachments/assets/fdfdcb7a-6130-420d-adaf-b1daac04eb89" />

As shown, the team with the most championships is Galatasaray (25), and a total of six teams have won the title. Now look at the two bars representing teams that have won the league once (İstanbul Başakşehir and Bursaspor). The bar for İstanbul Başakşehir appears longer, as if they had more championships. Also, the difference between Galatasaray and Fenerbahçe is 6, but this plot exaggerates that gap visually. There’s no need to overthink alternatives to radial barplots here — a simple barplot already solves the problem.

<img width="1000" height="750" alt="simple-barplot" src="https://github.com/user-attachments/assets/ea40acea-3125-4b29-b60c-4a1aee72dbf4" />

The bar plot shown above is more than sufficient for visualizing data like this. As mentioned earlier, lollipop plots can also be used as an alternative to traditional bar plots.

<img width="1000" height="750" alt="lollipop-plot" src="https://github.com/user-attachments/assets/ba349240-7296-4993-81d1-56a71f4df04e" />

**Conclusion:** Radial bar plots are visually appealing and fancy charts. However, because values are mapped onto a polar coordinate system, the distances between bars can appear larger or smaller than they actually are. To avoid this issue, it’s better to use a simple barplot or a lollipop plot instead.
