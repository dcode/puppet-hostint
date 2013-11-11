Facter.add(:hostint_ipv4_cidr) do
  confine :kernel => %w{Linux Darwin FreeBSD}
  int=Facter.value('hostint')
  setcode do
    mask = Facter.value("netmask_#{int}")
    if mask == '255.255.255.255'
      '32'
    elsif mask == '255.255.255.254'
      '31'
    elsif mask == '255.255.255.252'
      '30'
    elsif mask == '255.255.255.248'
      '29'
    elsif mask == '255.255.255.240'
      '28'
    elsif mask == '255.255.255.224'
      '27'
    elsif mask == '255.255.255.192'
      '26'
    elsif mask == '255.255.255.128'
      '25'
    elsif mask == '255.255.255.0'
      '24'
    elsif mask == '255.255.254.0'
      '23'
    elsif mask == '255.255.252.0'
      '22'
    elsif mask == '255.255.248.0'
      '21'
    elsif mask == '255.255.240.0'
      '20'
    elsif mask == '255.255.224.0'
      '19'
    elsif mask == '255.255.192.0'
      '18'
    elsif mask == '255.255.128.0'
      '17'
    elsif mask == '255.255.0.0'
      '16'
    elsif mask == '255.254.0.0'
      '15'
    elsif mask == '255.252.0.0'
      '14'
    elsif mask == '255.248.0.0'
      '13'
    elsif mask == '255.240.0.0'
      '12'
    elsif mask == '255.224.0.0'
      '11'
    elsif mask == '255.192.0.0'
      '10'
    elsif mask == '255.128.0.0'
      '9'
    elsif mask == '255.0.0.0'
      '8'
    elsif mask == '254.0.0.0'
      '7'
    elsif mask == '252.0.0.0'
      '6'
    elsif mask == '248.0.0.0'
      '5'
    elsif mask == '240.0.0.0'
      '4'
    elsif mask == '224.0.0.0'
      '3'
    elsif mask == '192.0.0.0'
      '2'
    elsif mask == '128.0.0.0'
      '1'
    elsif mask == '0.0.0.0'
      '0'
    else 
      nil
    end
  end
end
