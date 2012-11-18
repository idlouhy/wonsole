import os

out = open("screenshot.tex", "w");
count = 0

out.write("\\centering\n")
for file in os.listdir("screenshot\wonsole2"):
  if file.endswith("png"):
    file = file.replace("_", "\\_")
    out.write("\\begin{figure}\n")
    out.write("\\includegraphics[width=\\textwidth]{screenshot/wonsole2/"+file+"}\n")
    out.write("\\caption{"+file+"}\n")
    out.write("\\label{"+file+"}\n")
    out.write("\\end{figure}\n\n\n")
    count = count +1
    if count == 2:
      out.write("\\clearpage\n")
      count = 0
    

out.close()
