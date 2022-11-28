# Create your grading script here
CPATH= ".:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar"
rm -rf student-submission
git clone $1 student-submission
cd student-submission

if [[ -f "ListExamples.java" ]]
    then 
        echo "all the needed files are found"
fi

mkdir testdir
cp ../TestListExamples.java testdir/
cp ListExamples.java testdir/
cd testdir
javac -cp  $CPATH *.java 2> compile-err.txt
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples.java
if [[ $? -eq 0 ]]
then 
    echo "it succeeded"
fi


