namespace SharedModels.Events;

public class InventoryFailedEvent
{
    public Guid OrderId { get; set; }
}