using System; 
class URI {
    static void Main(string[] args) {
        double aux = 1;
        int count;
        for (double i = 0; i <= 2; i = Math.Round(i + 0.2f, 1)){
            count = 0;
            for (double j = aux; count < 3; j++){
                Console.WriteLine($"I={i} J={j}");
                count++;
            }
            aux = Math.Round(aux + 0.2f, 1);
        }
    }
}