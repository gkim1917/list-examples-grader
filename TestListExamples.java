import static org.junit.Assert.*;
import org.junit.*;
import java.util.ArrayList;
import java.util.List;

public class TestListExamples {
  // Write your grading tests here!

  @Test
  public void filterTest()
  {
    List<String> testlist = new ArrayList<>();
    testlist.add("apple");
    testlist.add("grape");
    testlist.add("watermelon");
    StringChecker sc = new StringChecker();
    assertEquals(CorrectListExamples.filter(testlist,sc), ListExamples.filter(testlist,sc));
  }

  @Test
  public void mergeTest(){
    List<String> listone = new ArrayList<>();
    listone.add("apple");
    listone.add("grape");
    listone.add("watermelon");
    List<String> listtwo = new ArrayList<>();
    listtwo.add("apple");
    listtwo.add("grape");
    listtwo.add("watermelon");
    assertEquals(CorrectListExamples.merge(listone,listtwo), ListExamples.merge(listone,listtwo));

  }

}
