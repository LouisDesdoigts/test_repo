rule make_data:
    output:
        "src/data/data.npy",
    cache: 
        True
    conda:
        "environment.yml"
    script:
        "src/scripts/make_data.py"

rule plot_data:
    input:
        "src/data/data.npy",
    output:
        "src/tex/figures/sample.pdf"
    conda:
        "environment.yml"
    script:
        "src/scripts/plot_data.py"