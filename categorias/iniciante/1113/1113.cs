using System; 

class URI {

    static void Main(string[] args) {
        string line, order;
        int x, y;
        
        while (true)
        {
            line = Console.ReadLine();
            x = Convert.ToInt32(line.Split(' ')[0]);
            y = Convert.ToInt32(line.Split(' ')[1]);

            if (x == y) return;

            order = x < y ? "Crescente" : "Decrescente";

            Console.WriteLine(order);
        }
    }

}