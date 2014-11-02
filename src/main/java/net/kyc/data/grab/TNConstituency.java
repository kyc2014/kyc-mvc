package net.kyc.data.grab;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;


public class TNConstituency{
	public static final String wikipediaStateUniveristy = "WikiStateUniversities.txt";
	public static final String base = "/home/maxsteal/universities/";
	public static void main(String args[]) throws IOException, SQLException{
		//TNCandidate();;
		collegeURLs();
		//test();
	}
	public static void test() throws IOException{
		Connection connect = Jsoup.connect("http://en.wikipedia.org/wiki/Howard_University");
		Document document = connect.get();
		Elements webs = document.select("table.infobox.vcard tr");
		for(Element web:webs){
			Elements th = web.getElementsByTag("th");
			if(th.text().contains("Website")){
				Elements url = web.getElementsByTag("a");
				if(url.attr("href").trim() != "")
				{
					System.out.println(url.attr("href"));
				}
				
			}
		}
		
		
	}
	public static void collegeURLs() throws IOException{
		Connection connect = Jsoup.connect("http://en.wikipedia.org/wiki/List_of_state_universities_in_the_United_States");
		Document document = connect.get();
		Element div = document.getElementById("mw-content-text");
		Elements anchors = div.getElementsByTag("a");
		String baseURL = "http://en.wikipedia.org";
		File file = new File(base+wikipediaStateUniveristy);
		 
		// if file doesnt exists, then create it
		if (!file.exists()) {
			file.createNewFile();
		}
		FileWriter fw = new FileWriter(file.getAbsoluteFile());
		BufferedWriter bw = new BufferedWriter(fw);

		for(int i=0; i<anchors.size(); i++){
			if(!anchors.get(i).attr("href").contains("#")){
			String url = baseURL+anchors.get(i).attr("href");
			try{
			Connection connectWiki = Jsoup.connect(url);
			Document documentWiki = connectWiki.get();
			//System.out.println(url);
			Elements webs = documentWiki.select("table.infobox.vcard tr");
			for(Element web:webs){
				Elements th = web.getElementsByTag("th");
				if(th.text().contains("Website")){
					Elements officialurl = web.getElementsByTag("a");
					
					if(officialurl.attr("href").trim() != "" && officialurl.attr("href").contains("edu"))
					{
						bw.write(anchors.get(i).text()+","+officialurl.attr("href")+"\n");
						bw.flush();
						System.out.println(anchors.get(i).text()+","+officialurl.attr("href"));
					}
				}
			}
//			System.out.println(weburls.html());
//			if(weburls.size()>0){
//			Elements webanchors = weburls.get(0).getElementsByTag("a");
//			String weburl = webanchors.get(0).attr("href");
//			System.out.println(weburl+":"+name);
//			}
			}
			catch(SocketTimeoutException ste){
				i--;
			}
			catch(Exception e){
				System.out.println(e);
			}
		}}
		bw.close();
	}
	
	public static void TNCandidate() throws SQLException, IOException{
		StringBuilder sb = new StringBuilder("http://www.assembly.tn.gov.in/members/");
		String baseImage = "http://www.assembly.tn.gov.in/members/profile/";
		StringBuilder sblink = new StringBuilder();
		com.mysql.jdbc.Connection dbConnect = (com.mysql.jdbc.Connection) DriverManager.getConnection("jdbc:mysql://localhost/kyc?user=root&password=root");
		Connection connect = Jsoup.connect("http://www.assembly.tn.gov.in/members/constnamewise.htm");
		Document document = connect.get();
		Elements elements = document.getElementsByAttributeValue("style","width: 249px; padding: 1.5pt");
		String link = "";
		Elements anchor = null;
		for(Element element: elements){
			Element parent = element.parent();
			Elements details = parent.getElementsByTag("td");
			String constituencyName = details.get(0).text();
			String constituencyNumber = details.get(1).text();
			String district = details.get(2).text();
			String name = details.get(3).text();
			String party = details.get(4).text();
			
			anchor  = element.getElementsByTag("a");
			sblink.delete(0, sblink.length());
					if(anchor.size() > 0){
						link=anchor.get(0).attr("href");
						sblink.append(sb+link);
						//System.out.println(sblink.toString());
						Connection candidateConnect = Jsoup.connect(sblink.toString());
						System.out.println(sblink.toString());
						Document candidateDocument = candidateConnect.get();
						Elements table = candidateDocument.getElementsByTag("tr");
						//for(Element row: table){
							//Elements columns = row.getElementsByTag("td");
							String image = "http://www.assembly.tn.gov.in/members/profile/"+candidateDocument.getElementsByTag("img").get(0).attr("src");
							saveImage(image,constituencyNumber);
							String dob = table.get(2).getElementsByTag("td").get(1).text();
							String pob = table.get(3).getElementsByTag("td").get(1).text();
							String education = table.get(4).getElementsByTag("td").get(1).text();
							String marital_status = table.get(5).getElementsByTag("td").get(1).text();
							String occupation = table.get(6).getElementsByTag("td").get(1).text();
							String political_carreer = table.get(7).getElementsByTag("td").get(1).text();
							String social = table.get(8).getElementsByTag("td").get(1).text();
							String chennai_address = table.get(10).getElementsByTag("td").get(1).text();
							String mofussil_address = table.get(11).getElementsByTag("td").get(1).text();
							String chennai_residence_number = table.get(13).getElementsByTag("td").get(1).text();
							String chennai_office_number = table.get(14).getElementsByTag("td").get(1).text();
							String mofussil_residence_number = table.get(15).getElementsByTag("td").get(1).text();
							String mofussil_office_number = table.get(16).getElementsByTag("td").get(1).text();
							String mobile = table.get(17).getElementsByTag("td").get(1).text();
							String email = table.get(18).getElementsByTag("td").get(1).text();
							
							PreparedStatement preparedStatement = (PreparedStatement) dbConnect.prepareStatement("insert into TNCandidates ("
									+ "candidate_name,constituency_name,constituency_number,district,party,dob ,pob ,education,marital_status,occupation,political_carreer,social,chennai_address,mofussil_address,chennai_residence_number,chennai_office_number,mofussil_residence_number,mobile,mofussil_office_number,email) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
							preparedStatement.setString(1,name);
							preparedStatement.setString(2,constituencyName);
							//preparedStatement.setString(2,image);
							preparedStatement.setString(3,constituencyNumber);
							
							preparedStatement.setString(4,district);
							preparedStatement.setString(5,party);
							preparedStatement.setString(6,dob);
							preparedStatement.setString(7,pob);
							preparedStatement.setString(8,education);
							preparedStatement.setString(9,marital_status);
							preparedStatement.setString(10,occupation);
							
							preparedStatement.setString(11,political_carreer);
							preparedStatement.setString(12,social);
							preparedStatement.setString(13,chennai_address);
							preparedStatement.setString(14,mofussil_address);
							preparedStatement.setString(15,chennai_residence_number);
							preparedStatement.setString(16,chennai_office_number);
							preparedStatement.setString(17,mofussil_residence_number);
							preparedStatement.setString(18,mofussil_office_number);
							preparedStatement.setString(19,mobile);
							preparedStatement.setString(20,email);
							preparedStatement.executeUpdate();
		//					break;
							
					}
			//break;
		}
		
	}
	
	private static void saveImage(String imageUrl, String id) throws IOException {
		URL url = new URL(imageUrl);
		InputStream is = null;
		String outputFolder = "/home/maxsteal/tncandidates/";
		try {
			is = url.openStream();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		OutputStream os = new FileOutputStream(new java.io.File(outputFolder + id+".jpg"));

		byte[] b = new byte[2048];
		int length;

		while ((length = is.read(b)) != -1) {
			os.write(b, 0, length);
		}

		is.close();
		os.close();
		
	}

	public void TNCons() throws SQLException, IOException{
		com.mysql.jdbc.Connection dbConnect = (com.mysql.jdbc.Connection) DriverManager.getConnection("jdbc:mysql://localhost/kyc?user=root&password=root");
		 Statement statement = (Statement) dbConnect.createStatement();
		Connection connect = Jsoup.connect("http://www.assembly.tn.gov.in/members/constnamewise.htm");
		Document document = connect.get();
		Elements elements = document.getElementsByTag("tr");
		int j=1;
		for (Element element : elements) {
			Elements tds = element.getElementsByTag("td");
			PreparedStatement preparedStatement = (PreparedStatement) dbConnect.prepareStatement("insert into  TNConstituency values (?, ?, ?, ?)");
			if(tds.size() > 4 && j!=6){
			int count=1, i=1;
			for(Element td : tds){
			 Elements ptags = td.getElementsByTag("p");
			 String value;
			 value = ptags.get(0).getElementsByTag("span").html();
			 if("".equals(value)){
				 value = ptags.html();
			 }
			 System.out.println(value);
			 if(count != 4){
				 System.out.println(value);
			 preparedStatement.setString(i, value);
			 i++;
			 }
			 count++;
			}
			preparedStatement.executeUpdate();
			}
			j++;
			}
	}
}


