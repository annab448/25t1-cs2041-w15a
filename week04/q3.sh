for image_file in $(ls ~/friends); do
    ln -s "~/friends/$image_file" .
done
