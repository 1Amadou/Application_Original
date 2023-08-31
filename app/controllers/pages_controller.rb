class PagesController < ApplicationController
  def home
    @todo_list = TodoList.all
  end

  def presentation
    # Ici, vous pouvez mettre en place les données nécessaires pour la page de présentation
    @title = "Bienvenue sur votre application Tasks Master"
    @description = "Découvrez comment le Maître des Tâches vous aide à gérer vos tâches de manière efficace."

    # Vous pouvez également passer des données spécifiques à partir de vos modèles, par exemple :
   # @recent_tasks = Task.order(created_at: :desc).limit(5)
  end
end
