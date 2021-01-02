(ns pipeline.env
  (:require
    [selmer.parser :as parser]
    [clojure.tools.logging :as log]
    [pipeline.dev-middleware :refer [wrap-dev]]))

(def defaults
  {:init
   (fn []
     (parser/cache-off!)
     (log/info "\n-=[pipeline started successfully using the development profile]=-"))
   :stop
   (fn []
     (log/info "\n-=[pipeline has shut down successfully]=-"))
   :middleware wrap-dev})
