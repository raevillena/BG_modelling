import json
import shutil
import os

meta_path = "meta"

# Get labels
def get_labels(label_path):
    """
    Accepts a label path (in the form of a JSON) and returns the file
    as a Python object.
    """
    with open(label_path) as f:
        return json.load(f)

train_labels = get_labels(meta_path+"/train.json")
test_labels = get_labels(meta_path+"/test.json")
val_labels = get_labels(meta_path+"/test.json")

def copy_images(parent_folder, new_subset, dataset, target_labels):
    """
    Copies `labels[target_labels]` images from `parent_folder` to
    `new_subset` (named after `dataset`) folder.

    E.g. move steak images to data/steak_subset/train/ &
    data/steak_subset/test/

    Parameters
    --------
    parent_folder (str) - original folder path with all data
    new_subset (str) - name of parent folder to copy to
    dataset (str) - which dataset? (train or test)
    labels (list) - list of training or test labels
    target_labels (list) - list of target labels to copy e.g. ["steak", "pizza"]
    """
    # Get the appropriate labels
    print(f"\nUsing {dataset} labels...")
    labels = get_labels(meta_path+"/" + dataset + ".json")

    # Loop through target labels
    for i in target_labels:
        # Make target directory
        os.makedirs(parent_folder + "/" + new_subset + "/" + dataset + "/" + i,
                    exist_ok=True)

        # Go through labels and get appropriate classes
        images_moved = [] # Keep track of images moved
        for j in labels[i]:
            # Create original image path and new path
            og_path = parent_folder + "/images/" + j + ".jpg"
            new_path = parent_folder + "/" + new_subset + "/" + dataset + "/" + j + ".jpg"

            # Copy images from old path to new path
            shutil.copy2(og_path, new_path)
            images_moved.append(new_path)
        print(f"Copied {len(images_moved)} images from {dataset} dataset {i} class...")



parent_folder = "./"
target_labels = ["underaged", "excellent","overaged"]
new_subset = "black_garlic_main"
datasets = ["train", "test","val"]

# Copy training/test images
for i in datasets:
    copy_images(parent_folder=parent_folder,
                new_subset=new_subset,
                dataset=i,
                #labels=labels,
                target_labels=target_labels)