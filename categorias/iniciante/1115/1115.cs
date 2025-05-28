using System; 

class URI {

    static void Main(string[] args) {
        int x, y;
        string line;
        while (true)
        {
            line = Console.ReadLine();
            x = Convert.ToInt32(line.Split(' ')[0]);
            y = Convert.ToInt32(line.Split(' ')[1]);

            if (x == 0 || y == 0)
            {
                return;
            }

            if (x > 0 && y > 0) Console.WriteLine("primeiro");
            else if (x < 0 && y < 0) Console.WriteLine("terceiro");
            else if (x > 0 && y < 0) Console.WriteLine("quarto");
            else Console.WriteLine("segundo");
        }
    }

}