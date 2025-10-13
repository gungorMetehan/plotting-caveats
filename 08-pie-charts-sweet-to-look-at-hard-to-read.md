# Pie Charts: Sweet to Look At, Hard to Read

Pie charts are one of the most commonly used tools for visualizing data. They are often employed to show the proportion of different categories within a whole, making it easy to get a quick sense of relative sizes at a glance.
However, pie charts have long been criticized in the field of data visualization. One major limitation is that the human eye is not very good at accurately comparing angles. When multiple slices are of similar size, it becomes difficult to judge which category is larger or smaller.
Take a look at the three pie charts below. Can you easily tell which category occupies the largest portion in each chart? As you can see, this task is quite challenging.

<img width="2400" height="1350" alt="pie_charts" src="https://github.com/user-attachments/assets/98ed3858-18a2-4a33-8d35-b706d3639b94" />

On the other hand, if we represent the same data using bar charts, the comparison becomes much more straightforward. Below, you can see three bar plots created from the same data. Now it is immediately clear which category has the higher value in each case. This demonstrates why, in many situations, bar charts are a more effective choice for comparing categorical data.

<img width="2400" height="1350" alt="bar_charts" src="https://github.com/user-attachments/assets/0a5311bc-9a9c-41eb-b863-3c544fc4cf71" />

There are multiple reasons why pie charts are often disliked in data visualization. Below, you can see three examples of poor visualizations. Take a closer look at them.

![bad_pie_chart1](https://github.com/user-attachments/assets/55cbf01a-9c93-434c-a0b0-cfa9fad04259)

[SOURCE: Painting-with-numbers](https://www.painting-with-numbers.com/blog/getting-high-on-bad-data-visualization/)

![bad_pie_chart2](https://github.com/user-attachments/assets/5eedbfae-9e93-4ff9-9a81-0bd5e2e03872)

[SOURCE: datavis.ca](https://www.datavis.ca/gallery/evil-pies.php)

![bad_pie_chart3](https://github.com/user-attachments/assets/0108d910-0429-4fe9-b282-98a547b0e6ac)

[SOURCE: datavis.ca](https://www.datavis.ca/gallery/evil-pies.php)

What do you think is wrong with these pie charts? For instance, in the first pie chart, the categories do not sum to 100%. In other words, they do not represent parts of a whole. As for the second pie chart, it probably doesn’t even need a comment — it’s difficult to tell which color represents which category. The third pie chart actually looks quite “cool.” However, it still suffers from similar issues: (1) there are too many categories, (2) there is a mismatch between how the data is aggregated and how it is visualized, and (3) visual showiness overshadows the message the data is meant to convey.

**Conclusion:** Pie charts will likely continue to be used in data visualization for some time. You may come across anti–pie chart movements online — there is a surprisingly strong dislike for them. Nevertheless, if you must use a pie chart, make sure to follow these guidelines: (1) ensure the data represents parts of a whole, (2) use only a small number of categories (fewer than five), and (3) avoid colors that are too similar to distinguish.




