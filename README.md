# Blood Vessel Segmentation for Retina and Chicken Eggs (WIP)

Cancer cells grow randomly, creating more blood vessels to take more nutrients from the body, this makes cancer grow faster. Some drugs have an interesting behavior of constricting blood vessels and preventing blood from circulating, these drugs can be used in cancer cells to prevent them from receiving nutrients. In the lab, we study these drugs' effects on blood vessels in chicken eggs, where we take pictures of the blood vessel and compare them with and without the effects of drugs. To make this study, it is necessary to segment all the blood vessels from a set of images before any analysis can be done. 

The main problem with vessel segmentation is that the process takes a lot of time to be made manually, and algorithms automatization such as the ImageJ are not accurate and require a lot of human interference. This project aims to guarantee reliable results with less to no human interference in blood vessel segmentation. The idea is to use algorithms that are already known to work for retina blood vessel segmentation in our image dataset of chicken eggs; this will ensure more accurate segmentation than obtained with ImageJ while giving more flexibility to adapt the algorithm to our needs. 
  
Although it seems arduous to build our dataset from scratch, mainly because of the need to label all vessels manually, we showed that accurate results are obtained even using only a few images. The results of the segmentation of the retina fundus eye and from chicken eggs are presented below, the latter is a work in progress.


![Retina Blood Vessel Segmentation](images/vessel.png)
|:--:| 
| *Segmentation of Blood Vessels from Eye Fundus* |
Segmentation obtained using a simple U-net.

![Chicken Egg Blood Vessel Segmentation (WIP)](images/vessel-egg.png)
|:--:| 
| *Segmentation of Blood Vessels from Chicken Eggs* |
Notice that, there is some blood vessel in the background that should be ignored by the algorithm.

Labels:
- White: Segmentation made by hand. (Ground Truth)
- Blue: Correct segmentation predicted by the algorithm. (True Postiive)
- Green: Incorrect segmentation predicted by the algorithm. (False Positive)

## Future implementations:

- [ ] Get better labels for image segmentation.
- [ ] Obfuscate background blood vessels.
- [ ] Splitting the vessels into different classes based on their diameter and changing the loss to focal loss, this should improve the segmentation of the tiny vessels.
- [ ] DDefine what will be measured after the segmentation and adapt a metric for it.  

## Prerequisites:

```python
numpy
opencv
matplotlib
tensorflow
tensorflow-io
scikit-learn
```

## Authors
[Ronaldo](https://www.linkedin.com/in/ronaldo-givisiez/)

[Thomas](http://linkedin.com/in/thomas-toshio-inoue-5240241b5)
