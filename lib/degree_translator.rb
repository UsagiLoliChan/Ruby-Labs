class DegreeTranslator
  def conversion(oval, oscale, nscale)
    return nil if oscale == nscale

    case oscale
    when 'C'
      conversion_c(oval, nscale)
    when 'K'
      conversion_k(oval, nscale)
    when 'F'
      conversion_f(oval, nscale)
    end
  end

  def conversion_c(oval, nscale)
    case nscale
    when 'K'
      oval + 273.15
    when 'F'
      (9.0 / 5.0) * oval + 32.0
    end
  end

  def conversion_k(oval, nscale)
    case nscale
    when 'C'
      oval - 273.15
    when 'F'
      5.0 * (oval - 32.0) / 9 + 273.15
    end
  end

  def conversion_f(oval, nscale)
    case nscale
    when 'C'
      (5.0 / 9.0) * (oval - 32.0)
    when 'K'
      9.0 * (oval - 273.15) / 5.0 + 32.0
    end
  end
end
