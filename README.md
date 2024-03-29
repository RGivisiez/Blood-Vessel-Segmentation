# Blood Vessel Segmentation for Retina and Chicken Eggs (WIP)

## Objectives and Motivations

**Objective:** Improve the precision and speed of blood vessel segmentation.

**Motivation:** Improve the time-consuming and error-prone nature of manual blood vessel segmentation, as well as the limitations of existing automated algorithms like ImageJ.

![Retina Blood Vessel Segmentation](images/vessel.png)
|:--:| 
| *Segmentation of Blood Vessels from Eye Fundus* |
Segmentation obtained using a simple U-net.

![Chicken Egg Blood Vessel Segmentation (WIP)](images/vessel-egg.png)
|:--:| 
| *Segmentation of Blood Vessels from Chicken Embryo* |
Notice that there is some blood vessel in the background that should be ignored by the algorithm.

Labels:
- White: Segmentation made by hand. (Ground Truth)
- Blue: Correct segmentation predicted by the algorithm. (True Postiive)
- Green: Incorrect segmentation predicted by the algorithm. (False Positive)

## More About the Project

Cancer cells grow randomly and quickly, creating blood vessels to capture more nutrients from the organism. Some drugs have an interesting behavior of constricting blood vessels, preventing blood from circulating; these drugs can be applied to cancer cells to prevent them from receiving nutrients, which leads to cancer cell death. At the Federal University of Minas Gerais (UFMG), the effects of these drugs are studied on the blood vessels of chicken embryos. Pictures of the blood vessels are taken before and after the application of the drug. By comparing these two pictures, it is possible to measure the blood vessels' growth or shrinkage. To enable this type of study, it is necessary to segment all the blood vessels from a set of images before any analysis can be done.

The main problem with vessel segmentation is that the process takes a lot of time to be done manually, and automated algorithms such as [ImageJ][imagej] are not accurate and require a lot of human intervention. This project aims to guarantee reliable results with little to no human interference in blood vessel segmentation. The main idea is to use algorithms that are already known to work for retina blood vessel segmentation on our chicken embryo image dataset; this will ensure more accurate segmentation than is obtained with [ImageJ][imagej], while giving more flexibility to adapt the algorithm to our needs.

Although it seems arduous to build our dataset from scratch, mainly because of the need to label all vessels manually, we have shown that accurate results are obtained even using only a few images—five, to be more precise. The results of the segmentation of retina fundus eye and from chicken embryos are presented below; the latter is a work in progress.

  > **The algorithm metric has not been decided yet. The metric needs to be chosen based on the measures that will be taken in the lab.**

## Future implementations:

- [ ] Get better labels for image segmentation.
- [ ] Obfuscate background blood vessels.
- [ ] To imporove segmentation of tiny vessels, we can split the vessels into different classes based on their diameter and change the loss to focal loss.
- [ ] Define what will be measured after the segmentation.  

## How to use:

1. Install [Docker][docker] on your local machine.
2. Use the following command to create your docker image.
  >  The docker file included in this repository considers that a GPU is available.
  ```shell
  docker image build -t user_name:Image_name path_to_dockerfile
  ```
3. Start the container with the following command line.
  ```shell
  docker run --gpus all -v $PWD:/project -w /project -p 8080:8080 -it --rm user_name:Image_name bash
  ```
4. Open the Jupyter Notebook with the following command line.
  ```shell
  jupyter notebook
  ```


## Authors
[Ronaldo](https://www.linkedin.com/in/ronaldo-givisiez/)

[Thomas](http://linkedin.com/in/thomas-toshio-inoue-5240241b5)


[imagej]:https://imagej.nih.gov/ij/
[docker]:https://docs.docker.com/install/
