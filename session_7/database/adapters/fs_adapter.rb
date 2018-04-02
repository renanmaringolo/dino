class FSAdapter
  def list_users
    File.read('session_7/database/data/fs/dino/users.txt').lines.map(&:chop)
  end
end
