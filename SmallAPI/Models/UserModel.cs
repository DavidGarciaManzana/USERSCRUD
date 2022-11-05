namespace examen_backend_DAVID_GARCIA.Models
{
    public class UserModel
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime BirthDate { get; set; }
        public string? Email { get; set; }
        public string? Password { get; set; }
    }
}
