import os

def create_folder(foldername):
    os.mkdir("C:\\"+ foldername)

def create_subFolder(subfoldername):
    os.mkdir("C:\\Testinworld\\"+ subfoldername)

def concatinate_two_values(val1, val2):
    val3= val1+" "+ val2
    return val3