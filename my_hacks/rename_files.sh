for file in templates*.cpp
do
    mv -i "${file}" "${file/templates/dkp}"
done