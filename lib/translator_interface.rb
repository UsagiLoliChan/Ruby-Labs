load 'degree_translator.rb'
load 'stream.rb'

class TranslatorInterface < DegreeTranslator
  def run
    @interface = Stream.new
    oval = @interface.input_oval
    oscale = @interface.input_scale
    nscale = @interface.input_scale
    @interface.output_nval(conversion(oval, oscale, nscale))
  end
end
