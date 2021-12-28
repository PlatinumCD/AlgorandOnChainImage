Requirements:
    goal (In your PATH environment variable)
    jq (lightweight Command-line JSON Processor)
    Python 3.7 with Numpy, PIL

OnChainImage Setup:
    Step 1. Create an Algorand Wallet using goal
    Step 2. Create 2 Algorand addresses
    Step 3. Clone the OnChainImage repo into your home directory from https://github.com/PlatinumCD/AlgorandOnChainImage
    Step 4. Change directory to ~/AlgorandOnChainImage/contracts
    Step 5. Edit the ./build_contracts.sh script by inserting your newly created addresses on line 3 and line 4
    Step 6. Fund each address with 30 algos each. (60 algos total)
    Step 7. Run the ./build_contracts.sh script and write down the newly created app indices.
    Step 8. Change directory to ~/AlgorandOnChainImage/commands
    Step 9. Edit the ./src/contracts.cfg file by inserting your newly created app indices in the order they were created.
    Step 10. Edit the ./change_pixel.sh script to include the account you wish to make application calls.

Change the color of a pixel:
    Step 1. Run the ./change_pixel.sh script with 3 parameters: Row, Column, Color.
    Example: "./change_pixel 50 50 00FF00"

Create the image:
    Step 1. Run the ./get_image.sh script.
    Step 2. Open the blockchain_image.png file.

View the color of a single pixel:
    Step 1. Run the ./get_pixel.sh script with 2 parameters: Row, Column.
    Example: "./get_pixel 50 50" returns "00FF00"
