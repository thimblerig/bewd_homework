month = 0

while (month < 13)
  month = month + 1

  if (month <= 7)
    if (month % 2 > 0)
      puts month
    end
  end
  if (month > 7)
    if (month % 2 == 0)
      puts month
    end
  end

end
