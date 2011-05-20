Factory.define :story do |s|
  s.title "Foo"
  s.story_type "Bar"
  s.description "Baz"
  s.association :project
end