## Pipeline of research (working as outline for myself)
1.	Download Coco 2017 evaluation dataset
	-	http://images.cocodataset.org/zips/val2017.zip
2.	Take 1 image and test crafting with Foolbox and Adversarial Robustness Toolbox
    -	Choose one of these toolboxes to continue the research
        -	Both toolboxes work same way
    -	Try different crafting methods (PGD,FGSM and others) with different architecture (MobilenetV2, EfficientDet,Resnet50)
        -	each needed to configure separately.
3.	Take few images of the dataset and craft adversarial examples with different crafting methods while using different epsilon values.
    -	images size 224x224 with perturbation. (DEFAULT)
    -	original image size with perturbation applied after resizing. (TESTED)
    -	resizing image after perturbation applied.(TESTED)
4.	Use TensorFlow2 API to make predictions with pre-trained models for these images and visualize the results.
    -	Tested locally Jupyter Notebook and Google Colab.
        -	Out of memory locally.
5.	Look the detections and select epsilon value for the research (0.05).
    -	Epsilon value was selected by looking the predictions changing correct predictions to incorrect.
6.	Now craft a full dataset with this value of epsilon using different crafting methods.
    -	black and white images had to be converted into RGB images.
7.	Because created datasets are 224x224 create a comparable dataset from coco original (no perturbation but image sizes to 224x224).
8.	Create ground truths for each dataset.
    -	Take coco original ground truths and resize into 224x224
9.	Create tf.records files from images and ground truths
    -	This is done locally with create_coco_tf_record.py script.
    -	Create folder structure before running the script. Folder should contain subfolders data (images), annotations (labels.json), tfrecords.
10.	Run model_main_tf2 script to evaluate the datasets.
    -	Edit the script so that paths point to selected model and selected dataset.
    -	This gives mAP of the dataset which is used as a metric to be compared.
11.	Take all results of the datasets and create excel table containing the mAP metrics.
12.	Calculate ROC-curve and AUC (unsuccesfull)
