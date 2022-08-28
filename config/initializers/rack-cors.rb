# if defined? Rack::Cors
#   Rails.configuration.middleware.insert_before 0, Rack::Cors do
#     allow do
#       origins %w[
#                 localhost:3000
#                 https://e-taskmaster.com/
#                 http://e-taskmaster.com/
#               ]
#       resource '*',
#           headers: :any,
#           methods: [:get, :post, :put, :patch, :delete, :options, :head]
#     end
#   end
# end