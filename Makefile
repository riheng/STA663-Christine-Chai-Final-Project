IBP_report.pdf: IBP_report.tex
	pdflatex IBP_report.tex
	bibtex IBP_report.aux
	pdflatex IBP_report.tex
	pdflatex IBP_report.tex
    
wrong: functions.py naive_wrong.py    
	python functions.py
	python naive_wrong.py
    
naive: functions.py naive.py
	python functions.py
	python naive.py

testing: unit_function_tests.py unit_likelihood_tests.py
	python unit_function_tests.py
	python unit_likelihood_tests.py

usable: functions.py naive.py
	python functions.py
	python usable.py

Cythonized: Cython_setup.py Cython_functions.pyx Cythonized.py
	python Cython_setup.py build_ext --inplace
	python Cythonized.py
    
Using_jit: jit_functions.py jit_IBPcode.py
	python jit_functions.py
	python jit_IBPcode.py    
    
comparison:
	cd PyIBP; make