# Create your grading script here

rm -rf student-submission
git clone $1 student-submission
GRADE = "0"
cd student-submission

if [ -f "ListExamples.java" ]
then 
    echo "the file is found"
else
    echo "the file is missing"
    echo "Grade is" $GRADE
    exit 1
fi

cd ..
mkdir testdir
cp ../TestListExamples.java testdir/
cp ListExamples.java testdir/
cd testdir
javac -cp  $CPATH *.java 2> compile-err.txt
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples.java
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


