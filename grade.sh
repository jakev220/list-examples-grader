CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

set -e

if [[ -f student-submission/ListExamples.java ]]
then 
    echo "Thank you for your submission!"
    cp student-submission/ListExamples.java ./grading-area
    cp ./TestListExamples.java ./grading-area
    cp -r lib ./grading-area

else
    echo "Error: Please submit the correct file!"
fi



# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
