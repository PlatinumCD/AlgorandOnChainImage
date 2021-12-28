<h3>Requirements:</h3>
<ul>
    <li>goal (In your PATH environment variable)</li>
    <li>jq (lightweight Command-line JSON Processor)</li>
    <li>Python 3.7+ with Numpy, PIL</li>
</ul>

<h2>OnChainImage Setup:</h2>
<ul>
    <li>1. Create an Algorand Wallet using goal.</li>
    <li>2. Create 2 Algorand addresses.</li>
    <li>3. Clone the OnChainImage repo into your home directory from https://github.com/PlatinumCD/AlgorandOnChainImage</li>
    <li>4. Change directory to ~/AlgorandOnChainImage/contracts</li>
    <li>5. Edit the ./build_contracts.sh script by inserting your newly created addresses on line 3 and line 4.</li>
    <li>6. Fund each address with 30 algos each. (60 algos total)</li>
    <li>7. Run the ./build_contracts.sh script and write down the newly created app indices.</li>
    <li>8. Change directory to ~/AlgorandOnChainImage/commands</li>
    <li>9. Edit the ./src/contracts.cfg file by inserting your newly created app indices in the order they were created.</li>
    <li>10. Edit the ./change_pixel.sh script to include the account you wish to make application calls.</li>
</ul>
    
<h2>Change the color of a pixel:</h2>
<ul>
    <li>1. Run the ./change_pixel.sh script with 3 parameters: Row, Column, Color.</li>
    Example: <code>./change_pixel 50 50 00FF00</code>
</ul>
    
<h2>Create the image:</h2>
<ul>
    <li>1. Run the ./get_image.sh script.</li>
    <li>2. Open the blockchain_image.png file.</li>
</ul>

<h2>View the color of a single pixel:</h2>
<ul>
    <li>Step 1. Run the ./get_pixel.sh script with 2 parameters: Row, Column.</li>
    Example: <code>./get_pixel 50 50</code> returns <code>00FF00</code>
</ul>
