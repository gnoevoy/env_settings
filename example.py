from dataclasses import dataclass
from datetime import datetime
from statistics import mean
from collections import defaultdict

datetime.isoweekday()


@dataclass
class Sale_class:
    order_id: int
    customer: str
    product: str
    quantity: int
    unit_price: float
    order_date: datetime

    @property
    def revenue(self) -> float:
        return self.quantity * self.unit_price


sales = [
    Sale_class(2, "ob", "Mouse", 2, 25.00, datetime(2025, 1, 6)),
    Sale_class(3, "Alice", "Keyboard", 1, 80.00, datetime(2025, 1, 7)),
    Sale_class(4, "Chris", "Monitor", 2, 320.00, datetime(2025, 1, 8)),
    Sale_class(5, "Bob", "Laptop", 1, 1150.00, datetime(2025, 1, 10)),
    Sale_class(7, "Eve", "Webcam", 1, 85.00, datetime(2025, 1, 12)),
    Sale_class(6, "Dana", "Headphones", 3, 150.00, datetime(2025, 1, 11)),
]


def total_revenue(data_val: list[Sale_class]) -> float:
    return sum(s.revenue for s in data_val)


def revenue_by_customer(data_val: list[Sale_class]) -> dict[str, float]:
    result = defaultdict(float)

    for sale in data_val:
        result[sale.customer] += sale.revenue

    return dict(result)


def top_customer(data_val: list[Sale_class]) -> tuple[str, float]:
    customer_sales = revenue_by_customer(data_val)
    return max(customer_sales.items(), key=lambda x: x[1])


def average_order_value(data_val: list[Sale_class]) -> float:
    return mean(s.revenue for s in data_val)


def filter_large_orders(data_val: list[Sale_class], threshold: float) -> list[Sale_class]:
    return [sale for sale in data_val if sale.revenue >= threshold]


def print_summary(data: list[Sale_class]) -> None:
    print("-" * 40)
    print(f"Total orders : {len(data)}")
    print(f"Revenue      : ${total_revenue(data):,.2f}")
    print(f"Avg order    : ${average_order_value(data):,.2f}")

    customer, value = top_customer(data)
    print(f"Top customer : {customer} (${value:,.2f})")
    print("-" * 40)


if __name__ == "__main__":
    print_summary(sales)

    print("\nRevenue by customer:")
    for customer, revenue in revenue_by_customer(sales).items():
        print(f"{customer:10} ${revenue:,.2f}")

    print("\nOrders over $500:")
    for sale in filter_large_orders(sales, 500):
        print(f"{sale.order_id} | {sale.customer:10} | " f"{sale.product:10} | ${sale.revenue:,.2f}")
