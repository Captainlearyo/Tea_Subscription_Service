# Tea Subscription Service API

This is a simple Tea Subscription Service API built with Ruby on Rails. It allows users to subscribe to tea subscriptions, cancel their subscriptions, and view their subscription history.

## Table of Contents

- [Endpoints](#endpoints)
  - [1. Subscribe to a Tea Subscription](#1-subscribe-to-a-tea-subscription)
  - [2. Cancel a Tea Subscription](#2-cancel-a-tea-subscription)
  - [3. View Customer's Subscriptions](#3-view-customers-subscriptions)
- [Data Details](#data-details)
- [Getting Started](#getting-started)
- [Testing](#testing)
- [Dependencies](#dependencies)

## Endpoints

### 1. Subscribe to a Tea Subscription

- **Endpoint**: `POST /api/v0/subscriptions`
- **Description**: Allows customers to subscribe to a tea subscription.
- **Request Body**:
  - `customer_id` (integer): ID of the customer.
  - `tea_id` (integer): ID of the tea.
  - `title` (string): Title of the subscription.
  - `price` (float): Price of the subscription.
  - `frequency` (string): Frequency of delivery.
- **Response**:
  - If successful, returns the subscription details in JSON format.
  - If unsuccessful, returns errors in JSON format.

### 2. Cancel a Tea Subscription

- **Endpoint**: `PUT /api/v0/subscriptions/:id/unsubscribe`
- **Description**: Allows customers to cancel their tea subscriptions.
- **Request Parameters**:
  - `id` (integer): ID of the subscription to be canceled.
- **Response**:
  - If the subscription is successfully canceled, returns the updated subscription details in JSON format.
  - If the subscription cannot be canceled (e.g., already canceled), returns errors in JSON format.

### 3. View Customer's Subscriptions

- **Endpoint**: `GET /api/v0/customers/:customer_id/subscriptions`
- **Description**: Allows customers to view their subscription history.
- **Request Parameters**:
  - `customer_id` (integer): ID of the customer whose subscriptions are to be retrieved.
- **Response**:
  - Returns a JSON array of the customer's subscriptions, both active and canceled.

## Data Details

### Tea

- `Title` (string): The title of the tea.
- `Description` (string): A description of the tea.
- `Temperature` (string): The recommended brewing temperature.
- `Brew Time` (string): The recommended brewing time.

### Customer

- `First Name` (string): The customer's first name.
- `Last Name` (string): The customer's last name.
- `Email` (string): The customer's email address.
- `Address` (string): The customer's address.

### Subscription

- `Title` (string): The title of the subscription.
- `Price` (float): The price of the subscription.
- `Status` (enum): The status of the subscription (e.g., "active" or "cancelled").
- `Frequency` (string): The frequency of tea delivery (e.g., "weekly" or "monthly").

## Getting Started

To run this Tea Subscription Service API locally, follow these steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/tea-subscription-service.git
   ```

2. Navigate to the project directory:

   ```bash
   cd tea-subscription-service
   ```

3. Install the required dependencies:

   ```bash
   bundle install
   ```

4. Create and migrate the database:

   ```bash
   rails db:create
   rails db:migrate
   ```

5. Start the Rails server:

   ```bash
   rails server
   ```

6. The API should now be accessible at `http://localhost:3000`.

## Testing

To run the tests for this API, you can use RSpec:

```bash
rspec
```

## Dependencies

This Tea Subscription Service API is built using Ruby on Rails and uses RSpec for testing. It does not have any external dependencies.

---