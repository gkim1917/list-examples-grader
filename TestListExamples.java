import static org.junit.Assert.*;
import org.junit.*;
import java.util.ArrayList;
import java.util.List;

class Checker implements StringChecker {
  public boolean checkString(String s){
    return s.contains("app");
  }
}
public class TestListExamples {
  // Write your grading tests here!
  
  @Test
  public void filterTest()
  {
    List<String> testlist = new ArrayList<>();
    String[] input1= {"apple","grape","watermelon","application","appointment"};
    StringChecker sc = new StringChecker();
    for(int i=0;i<input1.length;i++){
      testlist.add(input1[i]);
    }
    String[] result={"apple","application","appointment"};
    List<String> resultlist = new ArrayList<>();
    for(int i=0;i<result.length;i++){
      resultlist.add(result[i]);
    }
    assertEquals(resultlist, ListExamples.filter(input1,sc));
  }

  @Test
  public void mergeTest(){
    List<String> listone = new ArrayList<>();
    listone.add("apple");
    listone.add("grape");
    listone.add("watermelon");
    List<String> listtwo = new ArrayList<>();
    listtwo.add("banana");
    listtwo.add("strawberry");
    listtwo.add("cherry");
    String[] result={"apple","grape","watermelon","banana","strawberry","cherry"};
    List<String> resultlist = new ArrayList<>();
    for(int i=0;i<result.length;i++){
      resultlist.add(result[i]);
    }
    assertEquals(resultlist, ListExamples.merge(listone,listtwo));

  }

}
