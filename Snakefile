rule make_data:
    output:
        directory("src/data/data_files")
    cache: 
        True
    conda:
        "environment.yml"
    script:
        "src/scripts/make_data.py"

rule plot_data:
    input:
        "src/data/data_files/"
    output:
        "src/tex/figures/sample.pdf"
    conda:
        "environment.yml"
    script:
        "src/scripts/plot_data.py"