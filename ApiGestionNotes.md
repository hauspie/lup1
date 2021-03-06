# Gestion des notes : API

| Ressource | **GET** | **PUT** | **POST** | **DELETE** |
| :-------: | :-----: | :-----: | :------: | :--------: |
| */api/{version}/formation* | Retourne la liste des promotions | Remplace toute la collection de promotions par une autre | Créer une nouvelle promotion | Supprime toutes les promotions |
| */api/{version}/formation/{formation_id}* | Retourne la liste des promotions de cette formation | Remplace les informations de cette formation ou la créer si elle n'existe pas | X | Supprime la formation à cette adresse |
| */api/{version}/formation/{formation_id}/{annee}* | Retourne les informations de la promotion | Remplace les informations de la promotion ou l'ajouter si il n'existe pas | X | Supprime la promotion |
| */api/{version}/formation/{formation_id}/{annee}/etudiants* | Retourne la liste des étudiants de la promotion | Remplace toute la collection d'étudiants par une autre | Ajoute un étudiant à cette promotion | Retire tous les étudiants de cette promotion |
| */api/{version}/formation/{formation_id}/{annee}/etudiants/{etudiant_id}* | Retourne les informations de l'étudiant | Remplace les informations de cet étudiant ou l'ajouter si il n'existe pas | X | Retire l'étudiant à cette adresse de la promotion |
| */api/{version}/formation/{formation_id}/{annee}/ues* | Retourne la liste des UE de la promotion | Remplace toute la collection d'UE par une autre | Ajouter une UE dans la promotion | Retire toutes les UE de la promotion |
| */api/{version}/formation/{formation_id}/{annee}/ues/{ue_id}* | Retourne les informations de l'UE | Remplace les informations de cette UE ou l'ajouter si elle n'existe pas | X | Retire l'UE à cette adresse de la promotion |
| */api/{version}/formation/{formation_id}/{annee}/ues/{ue_id}/matiere* | Retourne la liste des matières de l'UE | Remplace toute la collection des matières par une autre | Ajouter une matière dans l'UE | Retire toutes les matières de l'UE |
| */api/{version}/formation/{formation_id}/{annee}/ues/{ue_id}/matiere/{matiere_id}* | Retourne les informations de la matière | Remplace les informations de cette matière ou l'ajouter si elle n'existe pas | X | Retire la matière à cette adresse de l'UE |
| */api/{version}/formation/{formation_id}/{annee}/ues/{ue_id}/matiere/{matiere_id}/evaluations* | Retourne la liste des évaluations de la matière | Remplace toute la collection des evaluations par une autre | Ajouter une évaluation dans la matière | Retire toutes les évaluation de la matières |
| */api/{version}/formation/{formation_id}/{annee}/ues/{ue_id}/matiere/{matiere_id}/evaluations/{evaluation_id}* | Retourne les informations de l'évaluation | Remplace les informations de cette évaluation ou l'ajouter si elle n'existe pas | X | Retire l'évaluation à cette adresse de la matière |
| */api/{version}/formation/{formation_id}/{annee}/ues/{ue_id}/matiere/{matiere_id}/evaluations/{evaluation_id}/notes* | Retourne la liste des notes de l'évaluation | Remplace toute la collection des notes de l'évaluation par une autre | Ajouter une nouvelle liste de notes | Supprime toutes les notes |
| */api/{version}/formation/{formation_id}/{annee}/ues/{ue_id}/matiere/{matiere_id}/evaluations/{evaluation_id}/notes/{etudiant_id}* | Retourne les informations de la note pour un étudiant | Remplace les informations de cette note ou l'ajoute si elle n'existe pas | X | Supprime la note de l'étudiant à cette adresse pour cette évaluation |
| */api/{version}/etudiants* | Retourne la liste des étudiants | Remplace toute la collection des étudiants par une autre | Créer un nouvel étudiant | Supprime tous les étudiants |
| */api/{version}/etudiants/{etudiant_id}* | Retourne les informations de l'étudiant | Remplace les informations de cet étudiant ou l'ajouter si il n'existe pas | X | Supprime l'étudiant |
| */api/{version}/ues* | Retourne la liste des UEs  | Remplace toute la collection d'UEs par une autre | Créer une nouvelle UE | Supprime toutes les UEs |
| */api/{version}/ues/{ue_id}* | Retourne les informations de l'UE | Remplace les informations de cette UE ou l'ajouter si elle n'existe pas | X | Supprime l'UE |
| */api/{version}/matieres* | Retourne la liste des matières | Remplace toute la collection de matières par une autre | Créer une nouvelle matière | Supprime toutes les matières |
| */api/{version}/matieres/{matiere_id}* | Retourne les informations de la matière | Remplace les informations de cette matière ou l'ajouter si elle n'existe pas | X | Supprime la matière |
