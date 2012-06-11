include_recipe "libgpg-error"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    libgcrypt11
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
