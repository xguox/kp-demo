class CustomerBulkDestination < Kiba::Plus::Destination::MysqlBulk
  def connect_url
    'mysql://root:admin@localhost/kp-demo_development'
  end

  def columns
    [:id, :email, :first_name, :last_name]
  end

  def table_name
    "customers"
  end

  def input_file
    "/Users/xguox/workspace/kp-demo/tmp/customer_bulk.csv"
  end

  def truncate
    true
  end
end
