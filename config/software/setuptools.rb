#
# Copyright 2013-2014 Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name "setuptools"
default_version "27.3.0"

dependency "python"

source url: "https://pypi.python.org/packages/72/e1/741cd8c4825e58119481d8be4254c9cd133db50876b159cdf8cbd253fbb3/setuptools-#{version}.tar.gz",
       md5: '2246eb4c511fa4b50003b10ea2a49d42'

relative_path "setuptools-#{version}"

build do
  env = with_standard_compiler_flags(with_embedded_path)

  command "#{install_dir}/embedded/bin/python setup.py install" \
          " --prefix=#{install_dir}/embedded", env: env
end
