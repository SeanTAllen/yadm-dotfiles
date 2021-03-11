function set_hwclock
  set -l host (uname -n)

  switch $host
    case "chilton"
      sudo hwclock -s
    case "MININT-4GOINC9"
      sudo hwclock -s
  end
end
