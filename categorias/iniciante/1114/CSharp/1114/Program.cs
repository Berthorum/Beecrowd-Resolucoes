using System; 

class URI {

    static void Main(string[] args){
        int password;
        
        while (true) {
            password = Convert.ToInt32(Console.ReadLine());
            if (password == 2002){
                Console.WriteLine("Acesso Permitido");
                return;
            }
            else {

                Console.WriteLine("Senha Invalida");
            }
        }

    }

}