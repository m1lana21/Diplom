namespace Clens
{
    public interface ICurrentActivityProvider
    {
        void InitActivity(); // Убрали параметры Bundle
        object GetCurrentActivity();
    }
}
