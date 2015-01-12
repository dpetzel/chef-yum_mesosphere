# Copyright 2015 David Petzel
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

require_relative '../../spec_helper'

describe 'yum_mesosphere::default' do
  context 'default' do
    let(:chef_run) { ChefSpec::ServerRunner.converge(described_recipe) }

    it 'setups the mesosphere yum repo' do
      expect(chef_run).to create_yum_repository('mesosphere')
    end

    it 'setups the mesosphere-noarch yum repo' do
      expect(chef_run).to create_yum_repository('mesosphere-noarch')
    end

    it 'setups the mesosphere-source yum repo' do
      expect(chef_run).to create_yum_repository('mesosphere-source').with(
        enabled: false)
    end
  end
end
