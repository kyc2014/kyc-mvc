package net.kyc.data.grab;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
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


public class TNConstituencyImages{
	
	public static void main(String args[]) throws IOException, SQLException{
		TNCandidate();;
	}
	
	public static void TNCandidate() throws SQLException, IOException{
		StringBuilder sb = new StringBuilder("http://www.assembly.tn.gov.in/members/");
		String baseImage = "http://www.assembly.tn.gov.in/members/profile/";
		StringBuilder sblink = new StringBuilder();
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
							saveImage(image,name);
				}
		}
		
	}
	
	private static void saveImage(String imageUrl, String id) throws IOException {
		URL url = new URL(imageUrl);
		InputStream is = null;
		String outputFolder = "/home/ganeshprabhu/tncandidates/";
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

}


