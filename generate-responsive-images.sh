#!/bin/bash

# Create responsive image versions for portfolio images
# Based on the performance analysis:
# - Mobile: 382x255 pixels
# - Desktop: 555x371 pixels
# - Original: 1496x1000 pixels

# Create img directory if it doesn't exist
mkdir -p img/mobile img/desktop

# Process each portfolio image
for i in {1..6}; do
    echo "Processing portfolio-$i.webp..."
    
    # Generate mobile version (382x255)
    if command -v cwebp &> /dev/null; then
        # Convert to mobile size with WebP optimization
        cwebp -q 85 -resize 382 255 "img/portfolio-$i.webp" -o "img/mobile/portfolio-$i.webp"
    else
        echo "cwebp not found. Please install webp tools: brew install webp"
        exit 1
    fi
    
    # Generate desktop version (555x371)
    cwebp -q 90 -resize 555 371 "img/portfolio-$i.webp" -o "img/desktop/portfolio-$i.webp"
done

echo "Responsive images generated successfully!"
echo "Mobile versions: img/mobile/"
echo "Desktop versions: img/desktop/"