import tkinter as tk

X_CLASS = 'X'
CIRCLE_CLASS = 'O'
WINNING_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
]

root = tk.Tk()
root.title("Tic Tac Toe")

circle_turn = False
cells = [None] * 9
game_over = False

def start_game():
    global circle_turn, game_over
    circle_turn = False
    game_over = False
    for i in range(9):
        if cells[i] is not None:
            cells[i].config(text='', state='normal')
    winning_message.config(text='')
    set_board_hover_class()


def set_board_hover_class():
    root.config(cursor='hand2')

def check_win(current_class):
    for combination in WINNING_COMBINATIONS:
        if all(cells[i].cget("text") == current_class for i in combination):
            return True
    return False

def end_game(draw):
    global game_over
    game_over = True
    if draw:
        winning_message.config(text='Draw!')
    else:
        winning_message.config(text=f"{'O' if circle_turn else 'X'} Wins!")

def is_draw():
    return all(cell.cget("text") in (X_CLASS, CIRCLE_CLASS) for cell in cells)

def place_mark(cell, current_class):
    cell.config(text=current_class, state='disabled')

def swap_turns():
    global circle_turn
    circle_turn = not circle_turn

def handle_click(cell):
    if cell.cget("text") == "" and not game_over:
        current_class = CIRCLE_CLASS if circle_turn else X_CLASS
        place_mark(cell, current_class)
        if check_win(current_class):
            end_game(False)
        elif is_draw():
            end_game(True)
        else:
            swap_turns()
            set_board_hover_class()

# Create the cells
for i in range(9):
    cell = tk.Button(root, text='', font=("Comic Sans MS", 36), width=5, height=2, command=lambda i=i: handle_click(cells[i]))
    cell.grid(row=i // 3, column=i % 3, sticky="nsew")
    cells[i] = cell

winning_message = tk.Label(root, text='', font=("Comic Sans MS", 36))
winning_message.grid(row=3, column=0, columnspan=3)

for i in range(3):
    root.grid_rowconfigure(i, weight=1)
    root.grid_columnconfigure(i, weight=1)

start_button = tk.Button(root, text='Restart', command=start_game)
start_button.grid(row=4, column=0, columnspan=3)
start_button.config(font=("Cmbria", 30), relief=tk.GROOVE, bg="lightgray")


start_game()

root.mainloop()
