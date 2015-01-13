using System;
using System.Collections;
using System.Linq;
using System.Xml.Linq;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page 
{
  [WebMethod]
  public static IEnumerable GetFeedburnerItems(int Count)
  {
    XDocument feedXML = 
      XDocument.Load("http://feeds.encosia.com/Encosia");

    var feeds = 
      from feed in feedXML.Descendants("item")
      select new
      {
        Date = DateTime.Parse(feed.Element("pubDate").Value)
                       .ToShortDateString(),
        Title = feed.Element("title").Value,
        Link = feed.Element("link").Value,
        Description = feed.Element("description").Value
      };

    return feeds.Take(Count);
  }
}
