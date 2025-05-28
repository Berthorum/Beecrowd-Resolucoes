using System;

class URI
{

    static void Main(string[] args) {
        int n, x, y;
        string line;
        double res;

        n = Convert.ToInt32(Console.ReadLine());

        for (int i = 0; i < n; i++) {
            line = Console.ReadLine();
            x = Convert.ToInt32(line.Split(' ')[0]);
            y = Convert.ToInt32(line.Split(' ')[1]);

            if (y == 0)
            {
                Console.WriteLine("divisao impossivel");
                continue;
            }

            res = Convert.ToDouble(x) / Convert.ToDouble(y);
            Console.WriteLine(res.ToString("F1"));
        }
            
    }

}