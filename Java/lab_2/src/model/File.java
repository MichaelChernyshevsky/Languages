package model;
import java.io.*;
import java.nio.file.*;
import java.util.*;

public class File {
    static ArrayList<Map> dicts = new ArrayList<>();
    static Scanner in = new Scanner(System.in);
    public static void check(){
        System.out.println("Напишите путь файла из которого будем читать");
        String filename = in.next();
        if(_file._check_file(filename)){
            System.out.println("Файл найден ");
        }else {
            System.out.println("Файла нет ");
        }
    }
    public static void read(){

        System.out.println("Напишите путь файла из которого будем читать");
        String filename = in.nextLine();
        if(_file._check_file(filename)){
            ArrayList<String> total =_file._read(filename);
            System.out.println("Файл считан");
            _file._count(total,dicts);
        }else {
            System.out.println("Файла нет ");
        }

    }

    public static void write() throws IOException {
        int chousenMap = Integer.parseInt(_file._chouseMap(dicts));
        Iterator<Map.Entry<String, String>> itr = dicts.get(Integer.parseInt(String.valueOf(chousenMap))).entrySet().iterator();
        String total = _file._convert(itr);

        System.out.println("Дайте название вашему файлу");
        String filename = in.nextLine();
        if(_file._check_file(filename)){
            System.out.println("Такой файл уже есть");
        }else {
            FileWriter fileWriter = new FileWriter(filename);
            PrintWriter printWriter = new PrintWriter(fileWriter);
            printWriter.print(total);
            printWriter.close();
            System.out.println("Все готово");
        }



    }




}
class _file {
    public static boolean _check_file(String filename){
        Path path = Paths.get(filename);
        if (Files.exists(path)) {
            return true;
        } else {
            return false;
        }
    }
    public static ArrayList _read(String filename){
        ArrayList<String> total = new ArrayList<String>();

        try (BufferedReader br = new BufferedReader(new FileReader(filename)))
        {
            String line;
            while ((line = br.readLine()) != null) {
                total.add(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
       return total;
    }
    public static void _count( ArrayList<String> strings,ArrayList<Map> dicts){

        char[] str = strings.get(0).toCharArray();
        if (str.length!=0){
            System.out.println("Файл не пустой");
            Map<String, Integer> dictionary = new HashMap<String, Integer>();
            for (char c : str) {
                if (dictionary.containsKey(c)){
                    dictionary.put(String.valueOf(c), dictionary.get(c) + 1);
                }else{
                    dictionary.put(String.valueOf(c), 1);
                }
            }
            dicts.add(dictionary);
            System.out.println("Данные занесены");
        } else {
            System.out.println("Ничего нет");
        }

    }
    public static String _chouseMap(ArrayList<Map> dicts){
        Scanner in = new Scanner(System.in);
        System.out.println("Выберите какие данные хотите записать");
        int i = 0;
        for(Map map : dicts){
            System.out.println(i+"-"+map);
            i++;
        }
        String chousenMap = in.next();
        return chousenMap;
    }

    public static String _convert(Iterator<Map.Entry<String, String>> itr) {
        String total ="";
        while (itr.hasNext()){
            total+=itr.next();
            total+="\n";
        }
        return total;
    }
}
