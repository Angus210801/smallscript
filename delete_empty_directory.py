import os

def delete_empty_folders(path):
    for foldername, subfolders, filenames in os.walk(path, topdown=False):
        if not os.listdir(foldername):
            os.rmdir(foldername)
            print(f"{foldername} has been deleted.")

if __name__ == "__main__":
    path = input("Pls input the route：")
    delete_empty_folders(path)