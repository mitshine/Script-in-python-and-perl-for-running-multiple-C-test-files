import os
import glob
import subprocess
import time

# This is our shell command, executed in subprocess.

start = time.time()

# This is my path
path = "./test_files/*.c"

# It returns an iterator which will
# be printed simultaneously.
# print("\nUsing glob.iglob()")

# Prints all types of txt files present in a Path
for file in glob.iglob(path, recursive=True):
    print("\n")
    print("File location: ", file)
    print("Name of the test file: ", os.path.basename(file))
    print("OUTPUT: ")
    process = subprocess.run(["gcc", file, "-o", "output"])
    output_run = subprocess.run(["output.exe"])

end = time.time()
elapsed_time = end - start;

print ("\n")
print ("Simulation time: ", elapsed_time, " seconds")