# 💻: BMVC 2022 : Resolving Semantic Confusions for Improved Zero-Shot Detection

##  :eyeglasses: At a glance
This repository contains the official PyTorch implementation of our [BMVC 2022](www.bmvc2022.org) paper : Resolving Semantic Confusions for Improved Zero-Shot Detection, a work done by Sandipan Sarma, Sushil Kumar and Arijit Sur at [Indian Institute of Technology Guwahati](https://www.iitg.ac.in/cse/). 


- Supervised deep learning-based object detection models like Faster-RCNN and YOLO have seen tremendous success in the last decade or so, but are limited by the availability of large-scale annotated datasets, failure to recognize the changing object appearances over time, and ability to detect unseen objects.

- **Zero-shot detection (ZSD)** is a challenging task where we aim to recognize and localize objects simultaneously, **even when our model has not been trained with visual samples of a few target (“unseen”) classes**. This is achieved via knowledge transfer from the seen to unseen classes using semantics (attributes) of the object classes as a bridge.

- **Semantic confusion**: Knowledge transfer in existing ZSD models is not discriminative enough to differentiate between objects with similar semantics, e.g. *car* and *train*. 

- We propose a **generative approach and introduced triplet loss** during feature generation to account for inter-class dissimilarity.

- Moreover, we show that **maintaining cyclic consistency** between the generated visual features and their class semantics is helpful for improving the quality of the generated features.

- **Addressed problems** such as high false positive rate and misclassification of localized objects by resolving semantic confusion, and **comprehensively beat the state-of-the-art methods**.

<!---
<p align="center">
  <img alt="img-name" src="https://user-images.githubusercontent.com/14089338/184326334-d80e51f9-a907-49f9-876f-c2ecd4844834.png" width="700">
  <br>
    <em>InvPT enables jointly learning and inference of global spatial interaction and simultaneous all-task interaction, which is critically important for multi-task dense prediction.</em>
</p>
-->

# :bullettrain_side: Training the model

## 1. Creating the work environment
Our code is based on PyTorch and has been implemented using an NVIDIA DGX Station, with [mmdetection](https://github.com/open-mmlab/mmdetection) as the base framework for object detection, which contains a Faster-RCNN implementation. Install Anaconda/Miniconda on your system and create a conda environment using the following command:

```bash
conda env create -f zsd_environment.yml
```