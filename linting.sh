set -e

echo "running formatter checks"
echo "--------------------------"
black --check  --diff --color \
Classes/DB2ConnectorClass.py \
Classes/DenodoGraphQLClass.py \
Classes/LivePersonConnectorClass.py \
Classes/GoogleMapsClass.py \
ETL/google_maps_distance.py \
ETL/avalara_api_to_db2_update_script.py \
ETL/sl_update_merch_gift_card_per_sales.py \
ML/traffic_model/main.py \
utils/databases/db2/DB2ValidationsClass.py \
utils/secrets/build.py \
utils/secrets/index.py \
ETL/sc_vendor_list.py
echo "--------------------------"

echo "running style guide checks"
echo "--------------------------"
flake8 \
Classes/DB2ConnectorClass.py \
Classes/DenodoGraphQLClass.py \
Classes/LivePersonConnectorClass.py \
Classes/GoogleMapsClass.py \
ETL/google_maps_distance.py \
ETL/avalara_api_to_db2_update_script.py \
ETL/sl_update_merch_gift_card_per_sales.py \
ML/traffic_model/main.py \
utils/databases/db2/DB2ValidationsClass.py \
utils/secrets/build.py \
utils/secrets/index.py \
ETL/sc_vendor_list.py
echo "--------------------------"

echo "running spelling checks"
echo "--------------------------"
npx --yes cspell \
Classes/DB2ConnectorClass.py \
Classes/DenodoGraphQLClass.py \
Classes/LivePersonConnectorClass.py \
Classes/GoogleMapsClass.py \
ETL/google_maps_distance.py \
ETL/avalara_api_to_db2_update_script.py \
ETL/sl_update_merch_gift_card_per_sales.py \
ML/traffic_model/main.py \
README.md \
utils/databases/db2/DB2ValidationsClass.py \
utils/secrets/build.py \
utils/secrets/index.py \
ETL/sc_vendor_list.py
echo "--------------------------"