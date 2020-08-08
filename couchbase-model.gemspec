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

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "couchbase/model/version"

Gem::Specification.new do |spec|
  spec.name = "couchbase-model"
  spec.version = Couchbase::Model::VERSION
  spec.authors = ["Sergey Avseyev"]
  spec.email = ["sergey.avseyev@gmail.com"]
  spec.summary = "Data modeling tool for Couchbase Server"
  spec.description = "DSL for expressing data models and their relations"
  spec.homepage = "https://www.couchbase.com"
  spec.license = "Apache-2.0"

  spec.metadata = {
      "bug_tracker_uri" => "https://couchbase.com/issues/browse/RCBC",
      "mailing_list_uri" => "https://forums.couchbase.com/c/ruby-sdk",
      "source_code_uri" => "https://github.com/couchbase/couchbase-ruby-model/tree/#{spec.version}",
      "changelog_uri" => "https://github.com/couchbase/couchbase-ruby-model/releases/tag/#{spec.version}",
      "documentation_uri" => "https://docs.couchbase.com/sdk-api/couchbase-ruby-model-#{spec.version}/index.html",
      "github_repo" => "ssh://github.com/couchbase/couchbase-ruby-model",
  }

  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    exclude_paths = %w[
        .idea
        .github
        .gitignore
        bin
        test
        spec
        features
    ]
    `git ls-files --recurse-submodules -z`
        .split("\x0")
        .reject { |f| f.match(%r{^(#{Regexp.union(exclude_paths)})}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.rdoc_options << "--exclude" << "test/"

  spec.add_runtime_dependency "couchbase", "3.0.0.beta.1"
end
