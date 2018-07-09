# 2017-06-02 Moving the definition of =nSeasons()=  from package "pcts" to "sarima"
setGeneric("nSeasons", def = function(object){ standardGeneric("nSeasons") } )
setGeneric("nSeasons<-", def = function(object, ..., value){ standardGeneric("nSeasons<-") } )
