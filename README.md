# Blood Vessel Segmentation for Retina and Chicken Eggs (WIP)

In the laboratory, chicken eggs are used to study the effects of drugs on blood vessels dilating or contracting the vessels being necessary to segment them before any analysis can be done. The main problem with vessel segmentation is that the process takes a lot of time to be done manually, and algorithms like ImageJ are not accurate and require a lot of human interference. With this in mind, and aiming to guarantee reliable results with less human interference, we propose to use machine learning algorithms to make the segmentation. The idea is to use algorithms that are known to work for retina blood vessel segmentation in our chicken eggs image dataset, this should ensure better results and more flexibility to adapt the algorithm to our needs.

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
- Blue: Segmentation predicted by the algorithm. (True Postiive)
- Green: Wrong segmentation predicted by the algorithm. (False Positive)

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

[Thomas](http://linkedin.com/in/thomas-toshio-inoue-5240241b5)
[Ronaldo](https://www.linkedin.com/in/ronaldo-givisiez/)