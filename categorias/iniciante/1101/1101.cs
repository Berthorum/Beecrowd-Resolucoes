using System; 

class URI {

    static void Main(string[] args) {
        string line;
        int m, n, greater, smaller, sum;
        while (true)
        {
            line = Console.ReadLine();
            m = Convert.ToInt32(line.Split(' ')[0]);
            n = Convert.ToInt32(line.Split(' ')[1]);

            if (m <= 0 || n <= 0) return;

            greater = m > n ? m : n;
            smaller = greater == n ? m : n;
            sum = 0;

            for (int i = smaller; i <= greater; i++)
            {
                Console.Write(i + " ");
                sum += i;
            }
            Console.WriteLine($"Sum={sum}");
        }
    }

}