package net.kyc.spring.generator.candidate;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;

public class CandidateImage {
	public static void main(String args[]){
		try
		{
		URL url=new URL("http://www.google.com");
        URLConnection con;
        DataInputStream dis; 
        FileOutputStream fos; 
        byte[] fileData;
		Map<String, String> m1 = new HashMap<String, String>();
		m1.put("4064","Aaroon Rasheed,Shri J.M.");
		m1.put("2963","Agarwal,Shri Jai Prakash");
		m1.put("4548","Alagiri,Shri Sambandam Keerapalayam");
		m1.put("4253","Amlabe,Shri Narayan Singh");
		m1.put("3235","Annayyagari,Shri Sai Prathap");
		m1.put("4571","Antony,Shri Anto ");
		m1.put("4276","Aron,Shri Praveen Singh.");
		m1.put("4390","Awale ,Shri Jayawant Gangaram");
		m1.put("4265","Azharuddin,Shri Mohammed ");
		m1.put("4073","Baba,Shri K.C. Singh");
		m1.put("28","Babbar,Shri Raj");
		m1.put("4405","Bairwa,Shri Khiladi Lal");
		m1.put("4351","Baite,Shri Thangso");
		m1.put("4427","Bajwa,Sardar Partap Singh");
		m1.put("42","Bansal,Shri Pawan Kumar");
		m1.put("4445","Bavaliya,Shri Kunwarjibhai Mohanbhai");
		m1.put("52","Bhadana,Shri Avtar Singh");
		m1.put("54","Bhagora,Shri Tarachand");
		m1.put("4361","Bhoi,Shri Sanjay");
		m1.put("58","Bhuria,Shri Kantilal");
		m1.put("4416","Biswal,Shri Hemanand ");
		m1.put("4218","Botcha ,Dr. (Smt.) Jhansi Lakshmi");
		m1.put("3477","Chacko,Shri P.C.");
		m1.put("4039","Chaudhary,Dr. Tushar Amarsinh");
		m1.put("3000","Chidambaram,Shri Palaniappan");
		m1.put("3001","Chinta Mohan,Dr. ");
		m1.put("4063","Chitthan,Shri N.S.V.");
		m1.put("4257","Choudhary,Shri Harish");
		m1.put("4254","Choudhry,Smt. Shruti");
		m1.put("4212","Choudhury,Shri Abu Hasem Khan");
		m1.put("98","Chowdhary,Smt. Santosh");
		m1.put("97","Chowdhury,Shri Adhir Ranjan");
		m1.put("3264","Das,Shri Bhakta Charan");
		m1.put("4481","Dasmunsi,Smt. Deepa ");
		m1.put("2354","Deo,Shri V. Kishore Chandra ");
		m1.put("4052","Deora,Shri Milind Murli");
		m1.put("4564","Dhanapalan,Shri K. P.");
		m1.put("4342","Dhruvanarayana,Shri Rangaswamy");
		m1.put("4573","Dias,Dr. Charles");
		m1.put("4076","Dikshit,Shri Sandeep");
		m1.put("4210","Dutt,Smt. Priya Sunil");
		m1.put("2084","Engti,Shri Biren Singh");
		m1.put("4367","Ering,Shri Ninong");
		m1.put("4053","Gaikwad,Shri Eknath Mahadeo");
		m1.put("4074","Gandhi,Shri Rahul");
		m1.put("130","Gandhi,Smt. Sonia");
		m1.put("133","Gavit,Shri Manikrao Hodlya");
		m1.put("139","Ghatowar,Shri Paban Singh");
		m1.put("3956","Gogoi,Shri Dip");
		m1.put("4256","Guddu,Shri Prem Chand");
		m1.put("375","Gutha,Shri Sukender Reddy");
		m1.put("149","Handique,Shri Bijoy Krishna");
		m1.put("4525","Hari,Shri Sabbam");
		m1.put("4017","Harsha Kumar,Shri G.V.");
		m1.put("4579","Hegde,Shri Jayaprakash Korgi");
		m1.put("4207","Hooda,Shri Deepender Singh");
		m1.put("4196","Hossain,Shri Abdul Mannan");
		m1.put("4572","Hussain,Shri Ismail");
		m1.put("156","Jagannath,Dr. M.");
		m1.put("4287","Jain   Aditya  ,Shri Pradeep Kumar");
		m1.put("164","Jaiswal,Shri Sriprakash");
		m1.put("4409","Jakhar,Shri Badri Ram ");
		m1.put("3294","Jena,Shri Srikant Kumar");
		m1.put("4041","Jindal,Shri Naveen");
		m1.put("4414","Joshi,Dr. C. P.");
		m1.put("4402","Joshi,Dr. Mahesh");
		m1.put("3697","Kalmadi,Shri Suresh");
		m1.put("175","Kamal Nath,Shri ");
		m1.put("3051","Kamat,Shri Gurudas");
		m1.put("3842","Kanumuri,Shri Bapi Raju");
		m1.put("4401","Kataria,Shri Lalchand");
		m1.put("2994","Katoch,Smt. Chandresh Kumari");
		m1.put("186","Kaur,Smt. Preneet");
		m1.put("4428","Kaypee,Shri Mohinder Singh");
		m1.put("4400","Khandela,Shri Mahadeo Singh");
		m1.put("4315","Kharge,Shri Mallikarjun ");
		m1.put("3059","Khatri,Dr. Nirmal");
		m1.put("3523","Khurshid,Shri Salman");
		m1.put("4524","Killi,Dr. (Smt.) Kruparani");
		m1.put("4294","Kishor,Shri Kamal ");
		m1.put("477","Kodikunnil,Shri Suresh");
		m1.put("4372","Kowase,Shri Marotrao Sainuji");
		m1.put("3526","Krishnasswamy,Shri M.");
		m1.put("4336","Kumar,Shri Ramesh");
		m1.put("4568","Kurup,Shri N. Peethambara");
		m1.put("4020","Lagadapati,Shri Rajagopal");
		m1.put("4128","Libra,Shri Sukhdev Singh");
		m1.put("4034","Maadam,Shri Vikrambhai Arjanbhai");
		m1.put("222","Mahant,Dr. Charan Das");
		m1.put("3717","Maharaj,Shri Satpal");
		m1.put("4420","Majhi,Shri Pradeep");
		m1.put("4075","Maken,Shri Ajay");
		m1.put("4332","Malik,Shri Jitender Singh");
		m1.put("4514","Masram,Shri Basori Singh");
		m1.put("4204","Mcleod,Smt. Ingrid");
		m1.put("4060","Meena,Shri Namo Narain");
		m1.put("4412","Meena,Shri Raghuvir Singh");
		m1.put("3539","Meghe,Shri Datta Raghobaji");
		m1.put("4398","Meghwal,Shri Bharat Ram");
		m1.put("4055","Meinya,Dr. Thokchom");
		m1.put("4408","Mirdha,Dr. (Smt.) Jyoti");
		m1.put("4335","Mishra,Shri Mahabal ");
		m1.put("4460","Mohammad,Maulana Asrarul Haque");
		m1.put("4343","Moily,Dr.(Shri) M. Veerappa ");
		m1.put("4581","Mukherjee,Shri Abhijit ");
		m1.put("3085","Mullappally,Shri Ramachandran");
		m1.put("261","Muniyappa,Shri K.H.");
		m1.put("268","Muttemwar,Shri Vilas Baburao");
		m1.put("4322","Naik,Shri Porika Balram");
		m1.put("4279","Naqvi,Shri Zafar Ali");
		m1.put("274","Narah,Smt. Ranee");
		m1.put("4350","Narayanasamy,Shri V.");
		m1.put("4518","Natrajan,Km. Meenakshi");
		m1.put("4380","Nirupam,Shri Sanjay ");
		m1.put("4483","Noor,Smt. Mausam");
		m1.put("278","Ola,Shri Sis Ram");
		m1.put("4295","Pal ,Shri Jagdambika");
		m1.put("4105","Pal,Shri Raja Ram");
		m1.put("4352","Pala,Shri Vincent H");
		m1.put("3740","Panabaka,Smt. Lakshmi");
		m1.put("4300","Pandey,Dr. Vinay Kumar Vinnu");
		m1.put("309","Patel,Shri Dinsha J.");
		m1.put("4040","Patel,Shri Kishanbhai Vestabhai");
		m1.put("3365","Patel,Shri Somabhai Gandalal Koli");
		m1.put("4375","Patil,Shri Bhaskarrao Bapurao");
		m1.put("4211","Patil,Shri Pratik Prakashbapu");
		m1.put("4536","Perumal,Shri Viswanathan");
		m1.put("4058","Pilot,Shri Sachin");
		m1.put("4337","Prabhakar,Shri Ponnam");
		m1.put("4417","Pradhan,Shri Amarnath");
		m1.put("4065","Prasada,Shri Jitin");
		m1.put("4292","Punia,Shri P.L. ");
		m1.put("4022","Purandeswari,Smt. Daggubati");
		m1.put("4560","Raghavan,Shri M. K.");
		m1.put("3375","Raju ,Dr. M. Mangapati Pallam");
		m1.put("348","Rajukhedi,Shri Gajendra Singh");
		m1.put("4556","Ramasubbu,Shri S.S.");
		m1.put("4396","Rane,Dr. Nilesh Narayan");
		m1.put("3904","Rao,Shri Inderjit Singh");
		m1.put("3139","Rao,Dr. Kavuri Samba Siva");
		m1.put("3763","Rao,Shri Rayapati Sambasiva");
		m1.put("2864","Rawat,Shri Harish ");
		m1.put("3767","Reddy,Shri Anantha Venkatarami");
		m1.put("378","Reddy,Shri Jaipal  Sudini");
		m1.put("4341","Reddy,Shri Komatireddy Raj Gopal");
		m1.put("3583","Reddy,Shri Kotla Jaya Surya Prakash");
		m1.put("3907","Reddy,Shri Magunta Sreenivasulu");
		m1.put("4024","Reddy,Shri S.P.Y.");
		m1.put("4353","Ruala,Shri C. L.");
		m1.put("3400","Sahai,Shri Subodh Kant");
		m1.put("3914","Sardinha,Shri Francisco");
		m1.put("4027","Sarvey,Shri Sathyanarayana");
		m1.put("4349","Sayeed,Shri Hamdullah");
		m1.put("3958","Scindia,Shri Jyotiraditya Madhavrao");
		m1.put("3589","Selja,Kumari ");
		m1.put("4559","Shanavas,Shri M. I.");
		m1.put("3785","Sharma,Dr. Arvind Kumar");
		m1.put("4047","Sharma,Shri Madan Lal");
		m1.put("4413","Shekhawat,Shri Gopal Singh");
		m1.put("4523","Shetkar,Shri Suresh Kumar");
		m1.put("423","Shinde,Shri Sushil Kumar Sambhajirao");
		m1.put("4077","Sibal,Shri Kapil");
		m1.put("4415","Singh,Shri Ijyaraj ");
		m1.put("4403","Singh,Shri Jitendra");
		m1.put("4046","Singh,Chaudhary Lal");
		m1.put("4312","Singh,Shri N.Dharam");
		m1.put("4044","Singh,Smt. Pratibha");
		m1.put("4513","Singh, Smt. Rajesh Nandini");
		m1.put("4404","Singh,Shri Ratan");
		m1.put("4345","Singh,Shri Ratanjit Pratap Narain");
		m1.put("434","Singh,Rajkumari Ratna");
		m1.put("4429","Singh,Shri Ravneet");
		m1.put("4516","Singh,Shri Uday Pratap");
		m1.put("4434","Singla,Shri Vijay Inder");
		m1.put("3929","Sinh,Dr. Sanjay");
		m1.put("4320","Siricilla,Shri Rajaiah");
		m1.put("4038","Solanki,Shri Bharatsinh Madhavsinh");
		m1.put("4587","Spandana,Km. Ramya Divya");
		m1.put("4558","Sudhakaran,Shri Kumbakudi");
		m1.put("4029","Suklabaidya,Shri Lalit  Mohan");
		m1.put("4585","Suresh,Shri D.K.");
		m1.put("4552","Tagore,Shri Manicka");
		m1.put("4366","Takam Sanjoy,Shri ");
		m1.put("4363","Tamta,Shri Pradeep");
		m1.put("4282","Tandon,Smt. Annu");
		m1.put("4289","Tanwar,Shri Ashok");
		m1.put("4255","Taviad,Dr. (Smt.) Prabha Kishor");
		m1.put("4378","Taware ,Shri Suresh Kashinath");
		m1.put("4430","Tewari,Shri Manish");
		m1.put("4441","Thakor,Shri Jagdish");
		m1.put("4569","Tharoor,Dr. Shashi");
		m1.put("3209","Thomas,Prof. Kuruppassery Varkey");
		m1.put("4565","Thomas,Shri P. T.");
		m1.put("4078","Tirath,Smt. Krishna");
		m1.put("3286","Vardhan,Shri Harsh");
		m1.put("4567","Venugopal,Shri K. C.");
		m1.put("509","Verma,Shri Beni Prasad");
		m1.put("4517","Verma,Shri Sajjan Singh");
		m1.put("4319","Vishwanath,Shri Adagooru Huchegowda");
		m1.put("4259","Vivekanand,Dr. Gaddam");
		m1.put("4016","Vundavalli,Shri Aruna Kumar");
		m1.put("517","Vyas,Dr.(Kum.) Girija");
		m1.put("3225","Wasnik,Shri Mukul Balkrishna");
		m1.put("4232","Yadav,Shri Arun Subhashchandra");
		m1.put("4026","Yadav,Shri M. Anjan Kumar");
		m1.put("4028","Yaskhi,Shri Madhu Goud");
		m1.put("7","Adityanath ,Shri Yogi");
		m1.put("9","Advani,Shri Lal Krishna");
		m1.put("4267","Agrawal,Shri Rajendra");
		m1.put("3640","Ahir,Shri Hansraj Gangaram");
		m1.put("20","Ananth Kumar,Shri ");
		m1.put("3983","Angadi,Shri Suresh Chanabasappa");
		m1.put("22","Argal,Shri Ashok");
		m1.put("25","Azad,Shri Kirti (Jha)");
		m1.put("33","Bais,Shri Ramesh");
		m1.put("46","Basavaraj,Shri Gangasandra Siddappa");
		m1.put("4344","Besra,Shri Devidhan");
		m1.put("4329","Bhagat,Shri Sudarshan");
		m1.put("4510","Bundela,Shri Jeetendra Singh");
		m1.put("69","Chakravarty,Smt. Bijoya");
		m1.put("76","Chaudhary,Shri Haribhai Parthibhai");
		m1.put("4443","Chauhan,Dr. Mahendrasinh Pruthvisinh ");
		m1.put("4449","Chauhan,Shri Prabhatsinh Pratapsinh");
		m1.put("3991","Chavan,Shri Harischandra Deoram");
		m1.put("90","Choudhary,Shri Nikhil Kumar");
		m1.put("316","Danve,Shri Raosaheb Patil");
		m1.put("4437","Deka,Shri Ramen");
		m1.put("4515","Deshmukh,Shri K. D.");
		m1.put("3992","Dhotre,Shri Sanjay Shamrao");
		m1.put("4522","Dhurve,Smt. Jyoti");
		m1.put("4324","Dubey,Shri Nishikant ");
		m1.put("3984","Gaddigoudar,Shri Parvatagouda Chandanagouda");
		m1.put("128","Gandhi,Shri Dilip Kumar Mansukhlal");
		m1.put("4277","Gandhi,Shri Feroze Varun");
		m1.put("129","Gandhi,Smt. Maneka Sanjay");
		m1.put("143","Gohain,Shri Rajen");
		m1.put("2099","Gowda,Shri Chandre D.B. ");
		m1.put("3688","Hegde,Shri Anant Kumar Dattatreya");
		m1.put("152","Hussain,Shri Syed Shahnawaz");
		m1.put("4455","Jaiswal,Dr. Sanjay ");
		m1.put("4451","Jardosh,Smt. Darshana Vikram");
		m1.put("4439","Jat,Smt. Poonam Veljibhai");
		m1.put("4225","Jawale,Shri Haribhau Madhav");
		m1.put("170","Jigajinagi,Shri Ramesh Chandappa");
		m1.put("3989","Joshi,Shri Kailash");
		m1.put("172","Joshi,Dr. Murli Manohar");
		m1.put("3982","Joshi,Shri Pralhad Venkatesh");
		m1.put("4448","Kachhadia,Shri Naranbhai");
		m1.put("4576","Kashyap,Shri Dinesh");
		m1.put("4298","Kashyap,Shri Virender");
		m1.put("181","Kaswan,Shri Ram Singh");
		m1.put("4316","Kateel,Shri Nalin Kumar");
		m1.put("4296","Katti,Shri Ramesh Vishwanath");
		m1.put("4509","Lodhi,Shri Shivraj Singh");
		m1.put("220","Mahajan,Smt. Sumitra");
		m1.put("4474","Manjhi,Shri Hari");
		m1.put("4399","Meghwal,Shri Arjun Ram ");
		m1.put("4512","Mishra,Shri Govind Prasad");
		m1.put("4321","Mohan,Shri P. C.");
		m1.put("259","Munda,Shri Kariya");
		m1.put("4386","Munde ,Shri Gopinath Pandurang");
		m1.put("273","Naik,Shri Shripad Yesso");
		m1.put("4311","Pakkirappa,Shri S.");
		m1.put("285","Pandey,Shri Ravindra Kumar");
		m1.put("4360","Pandey,Km. Saroj");
		m1.put("4303","Paswan,Shri Kamlesh ");
		m1.put("4411","Patel,Shri Devji Mansingram");
		m1.put("4442","Patel,Smt. Jayshreeben ");
		m1.put("4364","Patel,Shri Lalubhai Babubhai");
		m1.put("4365","Patel,Shri Natubhai Gomanbhai");
		m1.put("310","Pathak,Shri Harin");
		m1.put("4370","Patil,Shri A.T. (Nana)");
		m1.put("4452","Patil,Shri Chandrakant Raghunath");
		m1.put("4358","Patle,Smt. Kamla Devi ");
		m1.put("331","Potai,Shri Sohan");
		m1.put("4369","Pratap Narayanrao,Shri Sonawane");
		m1.put("3568","Purkayastha,Shri Kabindra");
		m1.put("4446","Radadiyahai,Shri Vitthalbhai Hansrajbhai");
		m1.put("4274","Ram Shankar,Prof.(Dr.) ");
		m1.put("3901","Rama Devi,Smt.  ");
		m1.put("358","Rana ,Shri Rajendrasinh (Raju Rana)");
		m1.put("364","Rathwa,Shri Ramsinh Patalyabhai");
		m1.put("371","Ray,Shri Bishnu Pada");
		m1.put("4362","Sahu,Shri Chandu Lal ");
		m1.put("389","Sai,Shri Vishnu Deo");
		m1.put("4221","Scindia,Smt. Yashodhara Raje");
		m1.put("4582","Shah,Smt. Mala Rajya Laxmi");
		m1.put("4314","Shantha,Smt. J.");
		m1.put("4313","Shivaramagouda,Shri ");
		m1.put("4450","Shukla ,Shri Balkrishna Khanderao ");
		m1.put("3977","Siddeshwara,Shri Gowdar Mallikarjunappa");
		m1.put("4000","Sidhu,Shri Navjot Singh");
		m1.put("4475","Singh,Dr. Bhola");
		m1.put("4508","Singh,Shri Bhoopendra ");
		m1.put("4005","Singh,Shri Dushyant");
		m1.put("3986","Singh,Shri Ganesh");
		m1.put("552","Singh,Shri Jaswant");
		m1.put("4355","Singh,Shri Murarilal");
		m1.put("4326","Singh,Shri Pashupati Nath");
		m1.put("4459","Singh,Shri Pradeep Kumar");
		m1.put("451","Singh,Shri Radha Mohan");
		m1.put("4268","Singh,Shri Rajnath");
		m1.put("3987","Singh,Shri Rakesh");
		m1.put("3974","Singh,Shri Uday");
		m1.put("4468","Sinha,Shri Shatrughan Prasad");
		m1.put("464","Sinha,Shri Yashwant");
		m1.put("4447","Solanki ,Shri Dinubhai Boghabhai");
		m1.put("4444","Solanki,Dr. Kirit Premjibhai");
		m1.put("4520","Solanki,Shri Makhansingh");
		m1.put("4297","Sushant,Dr. Rajan");
		m1.put("4317","Swamy,Shri Janardhana");
		m1.put("3812","Swaraj,Smt. Sushma");
		m1.put("4283","Tandon,Shri Lal Ji");
		m1.put("4249","Thakur,Shri Anurag Singh");
		m1.put("4507","Tomar,Shri Narendra Singh ");
		m1.put("4340","Udasi,Shri Shivkumar Chanabasappa");
		m1.put("501","Vasava,Shri Mansukhbhai D.");
		m1.put("515","Virendra Kumar,Dr.  ");
		m1.put("528","Yadav,Shri Hukmdev Narayan");
		m1.put("4359","Yadav,Shri Madhusudan");
		m1.put("531","Yadav,Shri Ramakant");
		m1.put("4570","Yeddyurappa,Shri Raghavendra");
		m1.put("4286","Anuragi,Shri Ghanshyam ");
		m1.put("4270","Balmiki,Shri Kamlesh");
		m1.put("4284","Katheria,Shri Premdas");
		m1.put("3870","Kumar,Shri Shailendra");
		m1.put("4310","Lal,Shri Pakauri");
		m1.put("4278","Mithlesh Kumar,Shri ");
		m1.put("4165","Nahata,Smt. P. Jaya Prada");
		m1.put("4338","Patel,Shri Bal Kumar");
		m1.put("4331","Patel,Shri R.K. Singh");
		m1.put("4346","Ramkishun,Shri ");
		m1.put("4290","Sachan,Shri Rakesh");
		m1.put("402","Saroj,Smt. Sushila");
		m1.put("401","Saroj,Shri Tufani");
		m1.put("4233","Shekhar,Shri Neeraj");
		m1.put("438","Singh,Shri Brijbhushan Sharan");
		m1.put("4307","Singh,Shri Radhe Mohan");
		m1.put("4172","Singh,Kunwar Rewati Raman");
		m1.put("4264","Singh,Shri Yashvir");
		m1.put("2949","Verma,Smt. Usha");
		m1.put("4206","Yadav,Shri Dharmendra");
		m1.put("4580","Yadav,Smt. Dimple");
		m1.put("530","Yadav,Shri Mulayam Singh");
		m1.put("36","Bali Ram,Dr. ");
		m1.put("3657","Barq,Shri Shafiqur Rahman");
		m1.put("4299","Chaudhary,Shri Arvind Kumar");
		m1.put("4304","Chauhan,Shri Dara Singh");
		m1.put("4271","Chauhan,Smt. Raj Kumari");
		m1.put("4261","Hasan,Begum Tabassum ");
		m1.put("4281","Jahan,Smt. Kaisar ");
		m1.put("4302","Jaiswal,Shri Gorakh Prasad ");
		m1.put("4291","Karwariya,Shri Kapil Muni");
		m1.put("4269","Nagar,Shri Surendra Singh");
		m1.put("4308","Pandey,Shri Gorakh Nath");
		m1.put("4293","Pandey,Shri Rakesh");
		m1.put("4511","Patel,Shri Deoraj Singh");
		m1.put("4305","Rajbhar,Shri Ramashankar");
		m1.put("4260","Rana,Shri Jagdish Singh");
		m1.put("4262","Rana,Shri Kadir");
		m1.put("4096","Rawat,Shri Ashok Kumar");
		m1.put("4306","Singh,Shri Dhananjay ");
		m1.put("4288","Singh,Shri Vijay Bahadur");
		m1.put("4247","Tiwari  ,Shri  Bhismshankar Alias Kushal");
		m1.put("4275","Upadhyay,Smt. Seema");
		m1.put("4502","Adhikari ,Shri Sisir Kumar");
		m1.put("4501","Adhikari,Shri Suvendu");
		m1.put("4497","Ahmed,Shri Sultan ");
		m1.put("4578","Bakshi,Shri Subrata");
		m1.put("38","Bandyopadhyay,Shri Sudip");
		m1.put("4498","Banerjee,Shri Kalyan");
		m1.put("4583","Banerjee,Shri Prasun");
		m1.put("4489","Dastidar, Dr. (Smt.) Kakoli Ghosh");
		m1.put("4499","De(Nag),Dr. (Smt.) Ratna");
		m1.put("4485","Haldar,Dr. Sucharu Ranjan");
		m1.put("4490","Islam,Shri Sk. Nurul");
		m1.put("4492","Jatua,Shri Choudhury Mohan");
		m1.put("4493","Mitra,Shri Somendra Nath");
		m1.put("4486","Naskar,Shri Gobinda Chandra");
		m1.put("4484","Paul,Shri Tapas");
		m1.put("4506","Roy,Smt. Satabdi");
		m1.put("2554","Roy,Prof. Saugata");
		m1.put("4494","Suman,Shri Kabir");
		m1.put("4487","Trivedi,Shri Dinesh");
		m1.put("4476","Choudhary,Shri Bhudeo");
		m1.put("3489","Das,Shri Ram Sundar");
		m1.put("4464","Devi,Smt. Ashwamedh");
		m1.put("4466","Hassan,Dr. Monazir ");
		m1.put("4465","Hazari,Shri Maheshwar ");
		m1.put("4467","Kumar,Shri Kaushalendra");
		m1.put("4458","Kumar,Shri Vishwa Mohan");
		m1.put("4454","Mahto,Shri Baidyanath Prasad");
		m1.put("4457","Mandal,Shri  Mangani Lal");
		m1.put("276","Nishad,Capt.(Retd.) Jainarain Prasad");
		m1.put("4461","Ram,Shri Purnmasi");
		m1.put("4456","Roy,Dr. Arjun");
		m1.put("4472","Singh,Shri Mahabali");
		m1.put("4234","Singh,Smt. Meena");
		m1.put("4134","Singh,Shri Rajiv Ranjan (Lalan)");
		m1.put("3928","Singh,Shri Sushil Kumar");
		m1.put("527","Yadav,Shri Dinesh Chandra");
		m1.put("4469","Yadav, Prof. Ranjan Prasad");
		m1.put("532","Yadav,Shri Sharad");
		m1.put("4537","Abdul Rahman,Shri ");
		m1.put("6","Adhi Sankar,Shri ");
		m1.put("4551","Alagiri,Shri M. K.");
		m1.put("26","Baalu,Thiru  Thalikkottai Rajuthevar");
		m1.put("4533","Elangovan,Shri T.K.S.");
		m1.put("4540","Gandhiselvan,Shri S.");
		m1.put("4557","Helen, Smt. Davidson J. ");
		m1.put("157","Jagathrakshakan,Shri S.");
		m1.put("4554","Jeyadurai,Shri S. R.");
		m1.put("4144","Maran,Thiru Dayanidhi");
		m1.put("4547","Napoleon,Shri D.");
		m1.put("284","Palanimanickam,Shri S.S.");
		m1.put("344","Raja,Shri Andimuthu");
		m1.put("4553","Shivakumar ,Shri K. alias J.K. Ritheesh");
		m1.put("4146","Sugavanam,Shri E.G.");
		m1.put("4538","Thamaraiselvan,Shri R.");
		m1.put("507","Venugopal,Thiru Danapal");
		m1.put("514","Vijayan,Shri A.K.S.");
		m1.put("4","Acharia,Shri Basudeb");
		m1.put("4503","Baske,Dr. Pulin Bihari");
		m1.put("4193","Bauri,Smt. Susmita");
		m1.put("4563","Biju,Shri Parayamparanbil Kuttappan");
		m1.put("4208","Chowdhury,Shri Bansa Gopal");
		m1.put("3957","Das,Shri Khagen");
		m1.put("115","Dome,Dr. Ram Chandra");
		m1.put("4505","Haque,Prof. Sk. Saidul");
		m1.put("4178","Karunakaran,Shri P.");
		m1.put("4500","Malik,Shri Sakti Mohan");
		m1.put("4543","Natarajan,Shri P.R.");
		m1.put("4562","Rajesh,Shri M. B.");
		m1.put("381","Riyan,Shri Baju Ban");
		m1.put("4479","Roy,Shri Mahendra Kumar");
		m1.put("4504","Saha,Dr. Anup Kumar");
		m1.put("3777","Sampath,Shri Anirudhan");
		m1.put("4140","Jena,Shri Mohan");
		m1.put("4418","Laguri,Shri Yashbant Narayan Singh");
		m1.put("225","Mahtab,Shri Bhartruhari");
		m1.put("3724","Misra,Shri Pinaki");
		m1.put("4425","Mohapatra,Shri Sidhant ");
		m1.put("4422","Panda,Shri Baijayant Jay");
		m1.put("4426","Pangi,Shri Jayaram");
		m1.put("299","Patasani,Dr. (Prof.) Prasanna Kumar");
		m1.put("4424","Pradhan,Shri Nityananda");
		m1.put("4421","Ray,Shri Rudra Madhab ");
		m1.put("3918","Satpathy,Shri Tathagata");
		m1.put("411","Sethi,Shri Arjun Charan");
		m1.put("4419","Singh Deo,Shri Kalikesh Narayan ");
		m1.put("4354","Tudu,Shri Laxman");
		m1.put("4143","Adhalrao Patil,Shri Shivaji");
		m1.put("8","Adsul,Shri Anandrao ");
		m1.put("4382","Babar ,Shri Gajanan Dharmshi");
		m1.put("4376","Dudhgaonkar,Shri Ganeshrao Nagorao");
		m1.put("135","Gawali (Patil),Ms. Bhavana");
		m1.put("136","Geete,Shri Anant Gangaram");
		m1.put("4373","Jadhav,Shri Prataprao Ganpatrao");
		m1.put("189","Khaire,Shri Chandrakant Bhaurao");
		m1.put("4250","Paranjpe,Shri Anand Prakash");
		m1.put("4385","Wakchaure ,Shri Bhausaheb ");
		m1.put("4374","Wankhede,Shri Subhash Bapurao");
		m1.put("4539","Anandan,Shri K. Murugesan");
		m1.put("4546","Kumar,Shri P.");
		m1.put("4550","Manian,Shri O. S.");
		m1.put("4535","Rajendran,Shri C.");
		m1.put("4541","Semmalai,Shri S. ");
		m1.put("4542","Sivasami,Shri C.");
		m1.put("4544","Sugumar,Shri K. ");
		m1.put("3205","Thambidurai,Dr. Munisamy");
		m1.put("4532","Venugopal,Dr. Ponnusamy");
		m1.put("191","Khan,Shri Hassan");
		m1.put("4328","Kora,Shri Madhu ");
		m1.put("4491","Mandal,Dr. Tarun");
		m1.put("236","Mandlik,Shri Sadashivrao Dadoba");
		m1.put("3339","Meena,Dr. Kirodilal");
		m1.put("4325","Namdhari,Shri Inder Singh");
		m1.put("4575","Putul Kumari,Smt. ");
		m1.put("4011","Singh,Shri Kalyan");
		m1.put("4462","Yadav,Shri Om Prakash");
		m1.put("4389","Bhonsle,Shri  Udayanraje  Pratapsingh");
		m1.put("4377","Bhujbal,Shri Sameer Magan");
		m1.put("4394","Naik,Dr. Sanjeev Ganesh");
		m1.put("3557","Patel,Shri Praful Manoharbhai");
		m1.put("4391","Patil ,Dr. Padmasinha  Bajirao");
		m1.put("4393","Patil,Shri Sanjay Dina ");
		m1.put("327","Pawar,Shri Sharad Chandra Govindrao");
		m1.put("4251","Sangma,Kum. Agatha K.");
		m1.put("4392","Sule,Smt. Supriya Sadanand");
		m1.put("4529","Nimmala,Shri Kristappa");
		m1.put("4527","Rao,Shri Konakalla Narayana");
		m1.put("4323","Rao,Shri Nama Nageswara");
		m1.put("4258","Rathod,Shri Ramesh");
		m1.put("4528","Reddy,Shri Modugula Venugopala ");
		m1.put("4531","Sivaprasad,Dr. Naramalli");
		m1.put("4272","Baghel,Smt. Sarika Devendra Singh");
		m1.put("4273","Chaudhary,Shri Jayant");
		m1.put("4263","Chauhan,Shri Sanjay Singh");
		m1.put("4266","Nagpal,Shri Devendra ");
		m1.put("14","Singh,Shri Ajit");
		m1.put("4088","Dasgupta,Shri Gurudas");
		m1.put("4555","Lingam,Shri P.");
		m1.put("563","Panda,Shri Prabodh");
		m1.put("4423","Tarai,Shri Bibhu Prasad");
		m1.put("4126","Ajnala,Dr. Rattan Singh");
		m1.put("4433","Badal,Smt. Harsimrat Kaur");
		m1.put("4432","Ghubaya,Shri Sher Singh");
		m1.put("4131","Gulshan,Smt. Paramjit Kaur");
		m1.put("2654","Abdullah,Dr. Farooq");
		m1.put("4334","Beg,(Dr.) Mirza  Mehboob");
		m1.put("4333","Shariq,Shri Sharifuddin");
		m1.put("4470","Singh,Shri Jagadanand");
		m1.put("450","Singh,Shri Prabhunath");
		m1.put("430","Singh,Dr. Raghuvansh Prasad");
		m1.put("4214","Mahato,Shri Narahari");
		m1.put("4477","Roy,Shri Nripendra Nath");
		m1.put("10","Ahamed,Shri E.");
		m1.put("4561","Basheer,Shri E. T. Mohammed");
		m1.put("4330","Baitha,Shri Kameshwar ");
		m1.put("2917","Soren,Shri Shibu");
		m1.put("4577","Kumar,Dr. (Shri) Ajay");
		m1.put("244","Marandi,Shri Babu Lal");
		m1.put("4482","Majumdar,Shri Prasanta Kumar");
		m1.put("4478","Tirkey,Shri Manohar");
		m1.put("4083","Rao,Shri Kalva Kuntla Chandrasekhar ");
		m1.put("4339","Shanthi,Smt. M. Vijaya");
		m1.put("3394","Reddy,Shri Mekapati Rajamohan");
		m1.put("4530","Reddy,Shri Y. S. Jagan Mohan ");
		m1.put("4091","Owaisi,Shri Asaduddin");
		m1.put("4436","Ajmal,Maulana Badruddin");
		m1.put("4438","Toppo,Shri Joseph ");
		m1.put("4384","Jadhav ,Shri Baliram Sukur");
		m1.put("66","Bwiswmuthiary,Shri Sansuma Khunggur");
		m1.put("4042","Bishnoi,Shri Kuldeep");
		m1.put("3960","Devegowda,Shri H.D.");
		m1.put("4566","Mani,Shri Jose K.");
		m1.put("3857","Ganeshamurthi,Shri A.");
		m1.put("4347","Rai,Shri Prem Das");
		m1.put("4397","Shetti ,Shri Raju alias Devappa Anna");
		m1.put("4549","Thol,Shri Thirumaa Valavan");

		for(Map.Entry<String , String> m : m1.entrySet())
		{
				String outputfile=m.getValue().replaceAll("[.(), ]","");
				outputfile=outputfile.replaceAll("Dr.","");
				outputfile=outputfile.replaceAll("Smt.","");
				outputfile=outputfile.replaceAll("Shri","").toLowerCase();
				try
				{
                url = new URL("http://164.100.47.132/mpimage/photo/"+m.getKey()+".jpg"); //File Location goes here
				}
				catch(Exception e)
				{
					System.out.println("Here is the error");
				}
                con = url.openConnection(); // open the url connection.
                dis = new DataInputStream(con.getInputStream());
                fileData = new byte[con.getContentLength()]; 
                for (int q = 0; q < fileData.length; q++) { 
                    fileData[q] = dis.readByte();
                }
                dis.close(); // close the data input stream
                try
                {
		                fos = new FileOutputStream(new File("/home/maxsteal/kyc/codebase/kyc-mvc/src/main/java/net/kyc/spring/generator/candidate/images/"+outputfile)); //FILE Save Location goes here
		                fos.write(fileData);  // write out the file we want to save.
		                fos.close();
		        }
                catch(FileNotFoundException e)
                {
                	System.out.println("Image Not Found For "+m.getValue());
                }
                }
			}
			catch(Exception e)
			{}
			}
}