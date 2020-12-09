/**
* @author thauska || thayanacmamore
*/

global class AgileProject {

  public String externalId;
  public String name;
  public Date startDate;
  public Date endDate;

  public List<Sprint> sprints;

  public class Sprint {

    public String name;
    public Date startDate;
    public Date endDate;

    public List<userStory> userStories;

  }

  public class userStory {

    public String name;
    public Integer priority;
    public Integer points;

  }


}
