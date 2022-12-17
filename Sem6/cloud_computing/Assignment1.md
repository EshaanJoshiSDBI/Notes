### What are various instances of EC2?
1. General purpose instances:
- Normal system with basic requirements, basic memory. Commonly used by new users.
- Great functionality at a reasonable cost.
- Used for running web servers, gaming developments, low-level computations.
1a. A1
- Suitable for running ARM architecture such as JAVA or Python.
1b. M5
- Runs all instances run on intel run on intel xeon processors.
1c. C5
- Belongs to next gen compute optimized family- Used for running compute intensive workloads like batch processing, Machine Learning, high level computing, etc.
2. Memort optimized instances
2a. R5 and R5a
- Used by applications requiring adequate memory such as large scale databases, data analysis and other applications.
2b. X1 and X1e
- Designed for large scale memory intensive applications such as SAP HANA, powered by intel xeon E7-8000 processor.
3. Accelerated computing instances
3a. P3
- Used for high level computing, fluid dynamics, recognition applications.
3b. G3
- Uses field programmable gate arrays, with this we can scale applications up or down.
4. Storage optimization instances
- Used for high sequential read write access on large scale datasets.
4a. H1 and D22
- Powered by high frequency intel xeon processors that offers high disk throughput.
- Uses: Datawarehouses applications, data processing.
4b. I3
- Offers non-volatile memory express designed for high sequential access, high throughput.
- Use: Transactional databases, warehouses, analytics.
5. Burstable performance instance
- Fixed performance instances: Will have to end the process, if utilization goes above throughput we have to end the performance. Like our normal systems
- Burst performance instances: Creates a new instance and divides the work. Has a specific baseline, if more memory or if it goes beyond capacity it creates or 'bursts' another instances hence "Burst"

## Explain burst performance processors
- 
