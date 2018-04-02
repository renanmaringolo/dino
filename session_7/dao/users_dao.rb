class UsersDAO
  def initialize(adapter)
    @adapter = adapter
  end

  def list_users
    @adapter.list_users
  end
end
