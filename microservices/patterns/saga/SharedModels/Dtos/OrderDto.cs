namespace SharedModels.Dtos;

public class OrderDto
{
    public Guid OrderId { get; set; }
    public decimal TotalAmount { get; set; }
    public List<OrderItemDto> Items { get; set; } = [];
}