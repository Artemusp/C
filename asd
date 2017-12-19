namespace ClassLibrary1
{
    public class Library
    {
        public static string[] names_1 = { "Alexander", "Alexey", "Anatoliy" };
        public static string[] names_2 = { "Dasha", "Varya" ,"Anya"};
        public static string[] eyecolors = { "blue", "white", "pink" };
        public static string[] haircolors = { "pink", "grey", "orange" };
        
    }
    
    public class Kid
    {
        private string name;
        private bool sex;
        private int weight;
        private int length;
        private string eyecolor;
        private string haircolor;
        public string Name { get { return name; } set { name = value; } }
        public bool Sex { get { return sex; } set { sex = value; } }
        public int Weight { get { return weight; } set { weight = value; } }
        public int LEngth { get { return length; } set { length = value; } }
        public string Eyecolor { get { return eyecolor; } set { eyecolor = value; } }
        public string Haircolor { get { return haircolor; } set { haircolor = value; } }
        Random rand = new Random();
        public Kid()
        {
            
            
            if(rand.Next(0,2) == 0)
            {
                sex = true;
                Name = Library.names_1[rand.Next(0, 3)];
            }
            else
            {
                sex = false;
                Name = Library.names_2[rand.Next(0, 3)];

            }
            eyecolor = Library.eyecolors[rand.Next(0, Library.eyecolors.Length)];
            haircolor = Library.haircolors[rand.Next(0, Library.haircolors.Length)];
            weight = rand.Next(1, 100);
            length = rand.Next(1, 180);



        }
        public Kid(string name, bool sex, int weight, int length, string eyecolor, string haircolor)
        {
            this.name = name;
            this.sex = sex;
            this.weight = weight;
            this.length = length;
            this.eyecolor = eyecolor;
            this.haircolor = haircolor;
        }
    }
    public class Kindergraten
    {
        Random rand = new Random();
        Kid[] kids = new Kid[1];
        private int size = 0;
        

       
        
        
        




       
        public Kid this[int n]
        {
            
            get
            {
                
                return kids[n];
            }
            
        }
        public Kindergraten()
        {
            
            kids = new Kid[rand.Next(1, 10)];
            size = kids.Length;
            for(int j =0;j<size;j++)
            {
                kids[j] = new Kid();
            }
        }
        public int Size
        {
            get
            {
                
                return size;
            }
            
        }
        public void Add(Kid l)
        {
            if(size == kids.Length)
            {
                Array.Resize(ref kids, kids.Length * 2);
            }
            size++;
            kids[size - 1] = l;
        }
        
        public void Sort()
        {
            
            for (int i = 0; i < kids.Length;i++)
            {
                for(int j = 0;i<kids.Length;i++)
                {
                    if(kids[i].Weight >kids[j].Weight)
                    {
                        int ind;
                        
                        ind = kids[i].Weight;
                        kids[i].Weight = kids[j].Weight;kids[j].Weight = ind;
                        
                    }
                }
                
            }
            
        }
        
        


    }
}
