class CustomerDestination < Kiba::Plus::Destination::Mysql
  def connect_url
    'mysql://root:admin@localhost/kp-demo_development'
  end

  def prepare_sql
    'insert into customers (id, email, first_name, last_name) values (?, ?, ?, ?)'
  end

  def columns
    [:id, :email, :first_name, :last_name]
  end
end