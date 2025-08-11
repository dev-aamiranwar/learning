namespace SharedModels.Events;

public class InventoryUpdatedEvent
{
    public Guid OrderId { get; set; }
}