# project_ae

repository for thesis files without dataset

## Creating coco tfrecords from dataset
	python .\create_coco_tf_record.py --logtostderr 
		--train_image_dir ..\dataset\data\  
		--val_image_dir ..\dataset\data\ 
		--test_image_dir ..\dataset\data\ 
		--train_annotations_file ..\dataset\annotations\labels.json 
		--val_annotations_file ..\dataset\annotations\labels.json 
		--testdev_annotations_file ..\dataset\annotations\labels.json 
		--output_dir ..\dataset\tfrecords\
