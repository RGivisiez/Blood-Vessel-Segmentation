# Blood Vessel Segmentation for Retina and Chicken Eggs (WIP)

<!-- Cancer cells grow randomly creating more blood vessels to take more nutrients from the body and grow. Some drugs has a interesting behavior of constricting blood vessels and prevent blood from circulate, this drugs can be used to prevent cancer cells to receive nutrients. In the lab, we study this drugs analysing its effects on blood vessels in chicken eggs, where it is necessary to segment all the blood vessel from a image before any analysis can be done. The main problem with vessel segmentation is that the process takes a lot of time to be made manually, and algorithms automatization such as the ImageJ, are not accurate and require a lot of human interference. This project aim to guarante reliable results with less to none human interference in blood vessel segmentation. The ideia is to use algorithms that are already known to work for retina blood vessel segmentation in our chicken eggs image dataset, this will ensure more accurate segmentation than obtained with ImageJ, while given more flexibility to adapt the algorithm to our needs. 
  
Although it seems arduous to build our dataset from scrach, manly because of the need to label all vessels manually, we showed that accurate results are obatined even using only a few images. The results of the segmentation of the retina fundus eye and from chicken eggs are presented below, the latter is a work in progress. -->

In the laboratory, chicken eggs are used to study the effects of drugs on blood vessels dilating, contracting or growing of vessels being necessary to segment them before any analysis can be done. The main problem with vessel segmentation is that the process takes a lot of time to be done manually, and algorithms like ImageJ are not accurate and require a lot of human interference. With this in mind, and aiming to guarantee reliable results with less human interference, we propose to use machine learning algorithms to make the segmentation. The idea is to use algorithms that are known to work for retina blood vessel segmentation in our chicken eggs image dataset, this should ensure better results and more flexibility to adapt the algorithm to our needs.

While it seems arduous to build our dataset with images obtained in the laboratory, we showed that even with not so precise hand-made image segmentation, machine learning algorithms can segment the images with good precision. The results of the segmentation of the retina fundus eye and from chicken eggs are presented below, the latter is a work in progress.


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
- [ ] Obfuscate background blood vessels. Although the algorithm learns how to ignore the bottom vessels, removing them will speed up the train and improve the segmentation.
- [ ] Splitting the vessels into different classes based on their diameter and changing the loss to focal loss should improve the segmentation of the tiny vessels.

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
