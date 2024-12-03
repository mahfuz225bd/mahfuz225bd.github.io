#!/bin/bash

# Variables
SOURCE_REPO="https://github.com/mahfuz225bd/tryit.git"  # Repository URL
SOURCE_FOLDER="src"                                    # Folder to sync (src directory)
TARGET_DIR="./projects/tryit"                           # Final target directory

# Step 1: Clone or update the source repository
if [ ! -d "$TARGET_DIR/.git" ]; then
    echo "Cloning repository directly to '$TARGET_DIR'..."
    git clone --no-checkout "$SOURCE_REPO" "$TARGET_DIR"
    cd "$TARGET_DIR" || exit 1
    git config core.sparseCheckout true
    echo "$SOURCE_FOLDER/*" > .git/info/sparse-checkout  # Clone contents of the src directory
    git checkout main
else
    echo "Updating repository in '$TARGET_DIR'..."
    cd "$TARGET_DIR" || exit 1
    git pull origin main
fi

# Step 2: Check if the source folder exists in the repository
if [ ! -d "$TARGET_DIR/$SOURCE_FOLDER" ]; then
    echo "Error: '$SOURCE_FOLDER' does not exist in the repository."
    exit 1
fi

# Step 3: Clean up unnecessary files (only delete files except src and .git)
echo "Removing unwanted files from '$TARGET_DIR'..."
find "$TARGET_DIR" -mindepth 1 -maxdepth 1 ! -name "$SOURCE_FOLDER" ! -name ".git" -exec rm -rf {} +

# Step 4: Move contents of 'src' directory to the root of the target directory
echo "Syncing 'src' folder contents to '$TARGET_DIR'..."
mkdir -p "$TARGET_DIR"  # Ensure the target directory exists

# Ensure the source folder is not empty before moving
if [ "$(ls -A "$TARGET_DIR/$SOURCE_FOLDER")" ]; then
    mv "$TARGET_DIR/$SOURCE_FOLDER"/* "$TARGET_DIR/"
else
    echo "Warning: '$SOURCE_FOLDER' is empty, nothing to move."
fi

# Step 5: Remove the empty 'src' folder from the target directory
rm -rf "$TARGET_DIR/$SOURCE_FOLDER"

# Step 7: Print success message
echo "Sync completed successfully. Files moved to: $TARGET_DIR"