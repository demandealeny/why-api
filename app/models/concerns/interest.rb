module Interest
  def update_interest(vote)
    self.interest += vote
    self.save
  end
end