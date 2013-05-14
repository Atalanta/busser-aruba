# -*- encoding: utf-8 -*-
#
# Author:: SNS (<stephen@atalanta-systems.com>)
#
# Copyright (C) 2013, SNS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'busser/runner_plugin'

# A Busser runner plugin for Aruba.
#
# @author SNS <stephen@atalanta-systems.com>
#
class Busser::RunnerPlugin::Aruba < Busser::RunnerPlugin::Base
 
  postinstall do
    install_gem("aruba")
  end

  def test
    run!("cucumber #{suite_path('cucumber').to_s}")
  end
end
