joueur = {}
joueur.nom = ""
joueur.karma = 50
joueur.vie = 100
joueur.energie = 50

pieceEntree = {}
pieceEntree[1] = "chariots"
pieceEntree[2] = "corps"
pieceEntree[3] = "meuble"

inventaire = {}
inventaire.place = 5

function modifInventaire(incremInventaire)
    inventaire.place = inventaire.place + incremInventaire
    print("Il reste "..inventaire.place.." place(s) dans ton inventaire")
    if inventaire.place == 0 then
    print("L'inventaire est plein")
    end
end

function modifKarma(incremKarma)
    joueur.karma = joueur.karma + incremKarma
end

print("Une maladie a fait son apparition dans la petite communauté minière de la Passe de Duvik, empoisonnant leurs puits et ruinant leur récolte."..
    " Avec la pestilence ayant touché les hommes les plus fort de la garde seulement quelques jours avant leur mort,"..
    " le fardeau de descendre dans les mines pour purger la source du mal s'y étant installé revient donc à toi. Parviendras-tu à éradiquer le mal qui pèse sur la Passe de Duvik ?")

print("Quel est ton nom ?")
joueur.nom = io.read()
print("Très bien "..joueur.nom..", tu prépares tes affaires et t'apprêtes à déscendre dans les mines")

while input ~= "lime" or "marteau" do
    print("Une *lime* et un *marteau* se trouvent sur un établi, quel outil prends-tu ?")
    input = io.read()
    
    if input == "lime" then
        print("Tu mets : *"..input.."* dans ton sac")
        modifInventaire(-1)
        break
    end

    if input == "marteau" then
        print("Tu mets : *"..input.."* dans ton sac")
        modifInventaire(-1)
        break
    end
end

print(joueur.nom.." se dirige d'un pas décidé vers les mines. La portée d'entrée franchie, "..joueur.nom.." traverse un long tunnel humide et froid, tout en s'emparant d'une torche à la main"..
    " Le tunnel s’ouvre sur une petite pièce vaguement rectangulaire. De gros morceaux de minerai d’argent dispersés entourent des chariots de bois."..
    " La moitié inférieure de ce qui semble être un corps humain dépasse du dessous d’un chariot. Du sang séché s’étale un peu partout sur le chariot.".. 
    " Il n’y a aucun signe indiquant qu’il soit encore en vie, veux-tu malgré tout en avoir le coeur net ?")

input = io.read()
if input == "non" then
    print("Tu laisses le corps gésir sous le chariot et décides d'explorer la pièce...")
    modifKarma(-8)
    print("Tu ballayes la pièce du regard jusqu'à apercevoir péniblement une porte vers laquelle tu te diriges, elle est fermée. Tu te retournes alors et décide de fouiller la pièce."..
    " 3 éléments attirent ton attention, que décides-tu d'aller fouiller ?")
    for n=1,#pieceEntree do
        print(pieceEntree[n])
    end
    
    input = io.read() -- On demande au joueur d'entrer son choix
    
        if input == "chariots" then
            print("Il n'y a rien d'intéressant dans les chariots. Que décides-tu de fouiller ?")
            table.remove(pieceEntree, 1)
                for n=1,#pieceEntree do -- On enlève au joueur le choix "chariots" de la pièce d'entrée
                    print(pieceEntree[n])
                end
        end
        
        if input == "corps" then
            print("Il n'y a rien d'intéressant dans les chariots. Que décides-tu de fouiller ?")
            table.remove(pieceEntree, 2)
                for n=1,#pieceEntree do -- On enlève au joueur le choix "chariots" de la pièce d'entrée
                    print(pieceEntree[n])
                end
        end
        
        if input == "meuble" then
            print("Il n'y a rien d'intéressant dans les chariots. Que décides-tu de fouiller ?")
            table.remove(pieceEntree, 3)
                for n=1,#pieceEntree do -- On enlève au joueur le choix "chariots" de la pièce d'entrée
                    print(pieceEntree[n])
                end
        end
    
elseif input == "oui" or "corps" then
    print("Tu t'approches du corps et t'aperçois presque immédiatement qu'il est malheureusement sans vie. L'homme tien une clé dans la main que tu prends")
    modifKarma(4)
    modifInventaire(1)
end
