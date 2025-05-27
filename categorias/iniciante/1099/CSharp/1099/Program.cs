using System; 

class URI {
    static void Main(string[] args)
    {

        int n = Convert.ToInt32(Console.ReadLine());
        int a, b, count, greater, smaller;
        string line;

        for (int i = 0; i < n; i++)
        {
            line = Console.ReadLine();
            a = Convert.ToInt32(line.Split(' ')[0]);
            b = Convert.ToInt32(line.Split(' ')[1]);

            greater = a > b ? a : b;
            smaller = greater == a ? b : a;

            count = 0;

            for (int j = smaller + 1; j < greater; j++)
            {
                if (j % 2 != 0)
                {
                    count += j;
                }
            }
            Console.WriteLine(count);
        } 

    }

}