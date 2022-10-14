require 'chefspec'

describe 'assignment_install_apache2::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '20.04').converge(described_recipe) }

  it 'includes the `install` recipe' do
    expect(chef_run).to include_recipe('assignment_install_apache2::install')
  end

  it 'includes the config recipe' do
    expect(chef_run).to include_recipe('assignment_install_apache2::config')
  end
  
   it 'includes the config recipe' do
    expect(chef_run).to include_recipe('assignment_install_apache2::config')
  end
  
end
