# Project_ae

This repository contains files and scripts used in the thesis.
Datasets are not included here because of the size limits.


## Dataset tools and scripts
- /dataset_tools/image_resizer.ipynb #script for resizing coco images to 224x224
- /dataset_tools/edit_coco_json_bbox_size_according_to_image_size.ipynb #to resize bbox annotations
- /dataset_tools/fiftyone_view_dataset.ipynb #fiftyone tool to view datasets and annotations
- /dataset_tools/create_coco_tf_record.py #script to create TFRecords

## Ground Truth annotation files
- /annotations/labels_224 #for coco-224 dataset
- /annotations/labels_original #for coco-original dataset (validation dataset)

## Crafting Pipelines
- ae_crafting_pipeline_efficientnet.ipynb
- ae_crafting_pipeline_mobilenetv2.ipynb
- ae_crafting_pipeline_resnet50.ipynb

## Jupyter Notebooks
- Tensorflow_model_evaluator.ipynb #notebook to evaluate models in google colab
- Tensorflow_visualize_detections.ipynb #notebook to visualize detection in google colab

## Evaluation results
- /evaluation/mAP_results #results in txt files
- model_evaluation_results.xlsx #results tables in excel file

## Visualize images
- visualize_detections.ipynb #Visualize images locally

## Perturbation resize
- /perturbation_resize_results/ #perturbation resize result images