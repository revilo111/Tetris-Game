import tkinter as tk

width, height = 10, 20 # Logical grid size
scale = 24 # Pixel scaling factor
border = 2 # Border width
pixel_size = scale + border / 2 # Pixel size
rect_grid = [] # Rectangle grid
rect_next_block = [] # Next block array

fill_dict = {
    "000" : "#000000",  # Background
    "001" : "#00f0f0",  # Cyan
    "010" : "#0000f0",  # Blue
    "011" : "#f0a000",  # Orange
    "100" : "#f0f000",  # Yellow
    "101" : "#00f000",  # Green
    "110" : "#a000f0",  # Purple
    "111" : "#f00000"   # Red
}
border_dict = {
    "000" : "#000000",  # Background
    "001" : "#00d8d8",  # Cyan
    "010" : "#0000b0",  # Blue
    "011" : "#f06000",  # Orange
    "100" : "#d8a800",  # Yellow
    "101" : "#00a800",  # Green
    "110" : "#6000a8",  # Purple
    "111" : "#d80000"   # Red
}

# Create Tkinter window
root = tk.Tk()
canvas = tk.Canvas(root, width=(width + 15)*pixel_size, height=(height + 6)*pixel_size)
canvas.pack()

def draw_pixels():
    for y in range(height):
        for x in range(width):
            rect = canvas.create_rectangle(
                (x + 3)*pixel_size + border / 2, (y + 3)*pixel_size + border / 2,
                (x + 4)*pixel_size - border / 2, (y + 4)*pixel_size - border / 2,
                fill=fill_dict["000"], outline=fill_dict["000"], width=border)
            rect_grid.append(rect)
    for y in range(2):
        for x in range(4):
            rect = canvas.create_rectangle(
                (x + 16)*pixel_size + border / 2, (y + 3)*pixel_size + border / 2,
                (x + 17)*pixel_size - border / 2, (y + 4)*pixel_size - border / 2,
                fill=fill_dict["000"], outline=fill_dict["000"], width=border)
            rect_grid.append(rect)

def check_for_updates():
    with open("update_data.dat", "r+") as update_file:
        check = update_file.read(1)
        if(check):
            update_file.seek(0)
            update_grid(update_file.readlines())
            update_file.truncate(0)
               
    root.after(100, check_for_updates)

def update_grid(update_lines):
    for line in update_lines:
        index = bin_to_dec(line[:8])
        colour = line[8:11]
        print(colour)
        canvas.itemconfig(
            rect_grid[index], fill=fill_dict[colour],
            outline=border_dict[colour])
                    
def bin_to_dec(binary):
    total = 0
    mult = 1
    length = len(binary)
    for i in range(length):
        total += int(binary[length - 1 - i]) * mult
        mult *= 2
    return total

draw_pixels()

root.after(100, check_for_updates)

root.mainloop()