**Bin Size Matters!**

A histogram is the most commonly used graph to show frequency distributions. In a histogram, the number of observations in each bin is represented by the height of the bar. However, there is no rule regarding what the appropriate bin size should be in a histogram. Sometimes, this bin size choice can have a strong impact on the chart insight.
Let’s look at the distribution of chicken weights.

![binsize30](https://github.com/user-attachments/assets/0cf01ac0-876c-4856-bab4-7ffde250a7ee)

The weight ranges 108 and 423 grams. In the histogram above, the bin size is selected as 30. It’s not a crime. Let’s check what happens when the weights are split into bins of 5 grams instead of 30.

![binsize5](https://github.com/user-attachments/assets/4898db04-d1a5-4f9e-a8c7-72bc6dbcc97e)

This feels like a different histogram. Believe me, I only changed one number in the entire code block: bin size (y-axis changed automatically).
See the highlighted parts in the two histograms below.

![binsize30_highlighted](https://github.com/user-attachments/assets/4e870f9c-939c-4507-8f8f-c47b5741c1c8)
![binsize5_highlighted](https://github.com/user-attachments/assets/06eab296-6afb-4673-8b41-5727d43e6ac3)

Where did the similarity between 200-250 and 300-350 disappear?
Same data but different sense.

**Conclusion:** 
Use a histogram to examine the distribution. Bin size can be important at this point. Create histograms with different bin sizes. Most importantly, choose the bin size that best conveys your message. 
If you do not want to choose the appropriate bin size with intuition, you can google the following suggested methods to choose the appropriate bin size:
* Freedman-Diaconis Rule
* Sturges' Rule
* Scott's Rule
