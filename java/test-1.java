import java.io.*;
import java.lang.*;
public class test{
	public static void main(String args[]){
		ServerSocket s = new ServerSocket(9638);
		Socket ss = s.accept();
		OutputStream os = ss.getOutputStream();
		BufferedReader bf = new BufferedReader(new OutputStreamWriter(os));
		FileWriter fw = new FileWriter("test.html");
		String line = "";
		while(line != null)
		{
			line = bf.readLine();
			fw.writer(line);
		}
		fw.flush();
		fw.close();
		bf.close();
		os.close();
		ss.close();
		System.out.println("Hello World!");
	}
}
