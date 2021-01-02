(ns pipeline.env
  (:require [clojure.tools.logging :as log]))

(def defaults
  {:init
   (fn []
     (log/info "\n-=[pipeline started successfully]=-"))
   :stop
   (fn []
     (log/info "\n-=[pipeline has shut down successfully]=-"))
   :middleware identity})
