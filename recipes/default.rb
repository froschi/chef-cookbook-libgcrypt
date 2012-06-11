packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libgcrypt11
  /
when "precise"
  packages |= %w/
    libgcrypt11
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
