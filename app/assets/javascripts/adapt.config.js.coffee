ADAPT_CONFIG =
  # Stylesheets need to be in 'stylesheets' directory
  path: 'stylesheets/'
  # Set 'dynamic' to true to change when page size or orientation changes
  dynamic: true
  # Set ranges to call for css grids
  range: [
    '0px    to 760px  = grid960.css'
    '760px  to 1024px  = grid960.css'
    '1024px  to 1280px = grid1200.css'
    '1280px to 1600px = grid1380.css'
    '1600px to 1920px = grid1500.css'
  ]