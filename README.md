

Software link -> https://dickgrune.com/Programs/similarity_tester/
And download Sim 3.0.2 (.zip) 

download the package, unzip/ untar it and look for a Makefile.

In that Makefile : do the following:
1. The path provided in DIR is hardcoded, so kindly change it to your local PC's directory of your choice.

2. Also, in the same Makefile, the developer mistyped MAN1DIR at the following line.
$(MAN1D)/sim.1:	sim.1            
		$(COPY) sim.1 $@      
Search for the above line and change MAN1D to MAN1DIR.
3. After doing this, go to my GitHub page and download all *.c and *.h and replace the following files in the software with the ones you downloaded from my page (percentage.c and percentage.h ....)
4. Now you can proceed on with make environment.
5. After successful compilation , you can see various executables generated for various programming platforms.
For instance:: you should see sim_c for C files comparisons and similarly sim_c++ for C++, so on and so forth.

6. Now go to repo page and download rest of files (shell scripts and awk's) and place it in the /bin folder where you create 2 sub-directories one for C_files_Comparisons and other for C++_ file_Comparisons. 

For instance: in this directory, /bin/c_files_comp. you should place all the C-file submissions of students (have to follow this nomenclature only: first name_lastname.cpp) along with sim_c executable.

7. Now after doing this, you are ready to run my file script ./plagiarism_c.sh that will make all the comparisons and return the results of matches >75% (you can change this 75 % cap in the AWK script I have on my GitHub page)

8. Repeat the same for C++ folder as well.


