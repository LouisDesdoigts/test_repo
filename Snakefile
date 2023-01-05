rule make_data:
    output:
        directory("src/data/data_files")
    cache: 
        True
    conda:
        "environment.yml"
    script:
        "src/scripts/make_data.py"


# Programatically generate inputs
inputs = []
for i in range(2):
    file_name = "src/data/data_files/data{}.npy".format(i+1)
    inputs.append(file_name)

rule plot_data:
    input:
        inputs
        # "src/data/data_files/"
    output:
        "src/tex/figures/sample.pdf"
    conda:
        "environment.yml"
    script:
        "src/scripts/plot_data.py"