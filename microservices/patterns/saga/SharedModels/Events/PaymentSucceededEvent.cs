namespace SharedModels.Events;

public class PaymentSucceededEvent
{
    public Guid OrderId { get; set; }
}