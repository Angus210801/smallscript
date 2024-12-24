import os
import shutil

def extract_and_delete_subfolders(parent_folder):
    for root, dirs, files in os.walk(parent_folder, topdown=False):
        for name in files:
            file_path = os.path.join(root, name)
            shutil.move(file_path, parent_folder)
        for name in dirs:
            dir_path = os.path.join(root, name)
            shutil.rmtree(dir_path)

parent_folder = 'C:\\Users\\anlin\\Downloads\\evolve265stereo'
extract_and_delete_subfolders(parent_folder)