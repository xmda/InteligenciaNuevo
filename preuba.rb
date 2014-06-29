gem 'classifier', '~> 1.3.4'
#gem 'fast-stemmer', '~> 1.0.2'
require 'classifier'
b = Classifier::Bayes.new 'soporte', 'reparacion'
a = Classifier::Bayes.new 'juguemos', 'peliemos'
b.train_soporte "para soporte y asistencia"
#b.train_soporte = soporte => para soporte y asitencia
b.train_reparacion "reparacion y mantemiento de equipo de computo"
#b.train_reparacion = reparacion => para soporte y asitencia
a.train_juguemos "juguemos juntos"
a.train_peliemos  "peliemos juntos ahora"

#puts b.classify "necesito componer mi equipo porque tiene virus"

puts a.classify "juguemos juntos"

puts b.classify "no puedo instalar un programa necesito soporte y asesoria"
