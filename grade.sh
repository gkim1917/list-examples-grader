# Create your grading script here
# Clone the repository of the student submission to a well-known directory name
rm -rf student-submission
git clone $1 student-submission
GRADE="0"
cd student-submission
# Check that the student code has the correct file submitted.
if [ -f "ListExamples.java" ]
then 
    echo "the correct file is found"
else
    echo "the file is missing"
    echo "Grade is" $GRADE
    exit 1
fi
# Somehow get the student code and your test .java file into the same directory
mkdir testdir
cp -r ../lib testdir/
cp ../TestListExamples.java testdir/
cp ListExamples.java testdir/
cd testdir
javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java

# If the compilation fails, detect and give helpful feedback about it.
if [ $? -eq 00 ]
then 
    echo "compilation succeeded"
else 
    echo "compilation failed"
    echo "Grade is" $GRADE
    exit 1
fi

if [ $? -eq 00 ]
then 
    GRADE=2
    echo "Grade is" $GRADE
else
    echo "Grade is" $GRADE
fi


