namespace SharedModels.Events;

public class RevertPaymentEvent
{
    public Guid OrderId { get; set; }
}