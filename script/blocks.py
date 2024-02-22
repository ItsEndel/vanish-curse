PREFIX = '"block.minecraft.';
SUFFIX = '"'

path = input("Path: ");

with open(str(path), 'r', encoding='utf-8') as file:
    output = "";

    for line in file.readlines():
        prefix = "";
        suffix = "";
        text = ""
        whatis = "prefix";

        for c in line:
            if whatis == "prefix":
                if prefix == PREFIX:
                    whatis = "text";
                elif c == PREFIX[len(prefix)]:
                    prefix += c;
                else:
                    prefix = "";
            
            if whatis == "text":
                if suffix == SUFFIX:
                    whatis = "suffix";
                elif c == SUFFIX[len(suffix)]:
                    suffix += c;
                else:
                    text += suffix + c;
                    suffix = "";
            
            if whatis == "suffix":
                pass;
        
        output += '"' + text + '",\n'
        print(text);


with open("e:\\Minecraft\\.minecraft\\versions\\LAN-1.20.4\\saves\\新的世界\\datapacks\\vanish-curse\\script\\output.txt", "w", encoding='utf-8') as file:
    file.write(output);
    pass;
