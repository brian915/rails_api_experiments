#GrapeSwaggerRails.options.url      = '/swagger_doc.json'
#GrapeSwaggerRails.options.app_url  = 'http://swagger.wordnik.com'
#GrapeSwaggerRails.options.before_filter_proc = proc {
 # GrapeSwaggerRails.options.app_url = request.protocol + request.host_with_port
#}
#GrapeSwaggerRails.options.app_name = 'Swagger'
#GrapeSwaggerRails.options.headers['Special-Header'] = 'Some Secret Value'
#GrapeSwaggerRails.options.doc_expansion = 'list'
#GrapeSwaggerRails.options.validator_url = nil
#GrapeSwaggerRails.options.api_key_name = 'api_token'
#GrapeSwaggerRails.options.api_key_type = 'query'
#GrapeSwaggerRails.options.before_filter do |request|
  # 1. Inspect the `request` or access the Swagger UI controller via `self`.
  # 2. Check `current_user` or `can? :access, :api`, etc.
  # 3. Redirect or error in case of failure.
#end
