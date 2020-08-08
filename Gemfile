#    Copyright 2020 Couchbase, Inc.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

source "https://rubygems.org"
git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem "couchbase", "3.0.0.beta.1", :source => "https://packages.couchbase.com/clients/ruby/2.7.0/"

gemspec

gem "rake"

group :development do
  gem "yard"
  platforms :mri do
    gem "byebug"
  end
end

group :test do
  gem "minitest"
  gem "minitest-reporters"
  gem "simplecov-cobertura"
end
