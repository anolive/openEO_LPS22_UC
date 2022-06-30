# install.packages('openeo')
library('openeo')

sessionInfo()

# connect and login in one step
host = "https://openeo.cloud"
con = connect(host, provider = "egi")

openeo::describe_account()

collections = list_collections()

# print an overview of the available collections (printed as data.frame or tibble)
print(collections)

# to print more of the reduced overview metadata
print(collections$SENTINEL1_GRD)

# Dictionary of the full metadata of the "SENTINEL1_GRD" collection (dict)
s2 = describe_collection("SENTINEL1_GRD") # or use the collection entry from the list, e.g. collections$SENTINEL1_GRD
print(s2)


# List of available openEO processes with full metadata
processes = list_processes()

# List of available openEO processes by identifiers (string)
print(names(processes))

# print metadata of the process with ID "load_collection"
print(processes$load_collection)


process_viewer("absolute")


