packages = %w/
  libgcrypt11
/

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
