Factory.define :basecamp_account do |bc|
  bc.account_name          { "thinkfasttank.basecamphq.com" }
  bc.username              { "ryandotsmith" }
  bc.password              { "$m1thert0n"     }
end

Factory.define :base_todo_list do |tl|
  tl.basecamp_id           { 7693121 } 
end
