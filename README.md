南京工业大学硕士论文Latex模板（njtechThesis）
================================================================================
Description: 

LaTeX (Master degree) thesis template for Nanjing TECH University

References: 

[1]. ucasthesis(https://github.com/mohuangrui/ucasthesis)

[2]. latex-njust808(https://code.google.com/p/latex-njust808/)

[3]. njustThesis(https://github.com/jiec827/njustThesis/)

Date: 2023-10-1

======================================================================

Pre-requirements:

1. Texlive2023 on windows OS/Linux/MacOSX

======================================================================

Notes:

1. Most parts of the projects are copyed from the aforementioned references.

2. Objects of this project including: 

    Transplant project[2] from code.google to gitHub, and trying to improve the 
readability of the codes(ecourage open-source projects);

======================================================================

Download:

    git clone https://github.com/zhangning737/njtechThesisMaster.git

======================================================================

How to use it:

    1. 修改学位论文封面信息（tex/cover.tex），并将对应的具体章节内容添加至tex目录下的其他文件内（正文部分额外添加的章节需要在Thesis.tex文件中使用input命令包含）；

    2. 采用命令xelatex Thesis.tex进行编译；

    3. 命令行makeindex Thesis.nlo -s nomencl.ist -o Thesis.nls生成术语链接；

    4. 更新参考文献bibtex Thesis.aux,并更新Thesis.bbl文件中的中文错误部分；

    5. 两次运行xelatex Thesis.tex重新编译生成pdf文件。

======================================================================

Files:

0. LICENSE: public license

1. README.md: introduction of this project

2. howToUse.pdf: a sample pdf file to illustrate how to use this template

3. njustThesis.tex: main function

4. sty: (directory) including files

5. tex: (directory) all chapters/sections included in main function 
njustThesis.tex

6. img: (directory) all images used in this thesis(prefer verctor image: eps, 
pdf, fig, etc)

7. bib: (directory) all references used in this thesis(in bibTeX format)

