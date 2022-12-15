rule make_data:
    output:
        "data.npy",
    conda:
        "environment.yml"
    script:
        "src/scripts/make_data.py"

rule plot_data:
    input:
        "data.npy",
    output:
        "src/tex/figures/sample.pdf"
    conda:
        "environment.yml"
    script:
        "src/scripts/plot_data.py"