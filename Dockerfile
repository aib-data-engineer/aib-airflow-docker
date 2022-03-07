FROM apache/airflow:2.1.2
RUN pip install --user --no-cache-dir acryl-datahub[airflow]
RUN pip install --user --no-cache-dir openpyxl
