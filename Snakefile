rule make_data:
    output:
        # "src/data/data.npy"
        directory("src/data/data_files")
    cache: 
        True
    conda:
        "environment.yml"
    script:
        "src/scripts/make_data.py"

rule plot_data:
    input:
        # "src/data/data_files/data1.npy"
        # "src/data/data_files/data2.npy"
        rules.make_data.output
    output:
        "src/tex/figures/sample.pdf"
    conda:
        "environment.yml"
    script:
        "src/scripts/plot_data.py"