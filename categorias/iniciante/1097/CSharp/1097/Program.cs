using System; 
class URI {
    static void Main(string[] args) {
        int aux = 7;
        int count;
        for (int i = 1; i <= 9; i += 2){
            count = 0;
            for (int j = aux; count < 3; j--){
                Console.WriteLine($"I={i} J={j}");
                count++;
            }
            
            aux += 2;
        }
    }
}