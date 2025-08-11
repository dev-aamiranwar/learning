namespace SharedModels.Events;

public class RevertInventoryEvent
{
    public Guid OrderId { get; set; }
}