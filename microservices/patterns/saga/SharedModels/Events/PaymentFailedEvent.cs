namespace SharedModels.Events;

public class PaymentFailedEvent
{
    public Guid OrderId { get; set; }
}