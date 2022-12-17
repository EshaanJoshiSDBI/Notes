- EC2 a web service offered by amazon that enables users to compute capacity according to their requirements.
# Types
1. General purpose instances:
- Normal system with basic requirements, basic memory.
- Commonly used by new users.
- Great functionality that too at a resonable cost.
- Used for running web servers, gaming developments, etc.
- Used for low-level computations.
1a. A1 (EC2 instance)
- Suitable for running ARM architecture such as JAVA or python
1b. M5
- Runs all instances run on intel xeon processors.
- More powerful that A1 in terms on, intel AVX-512 also performs encryption algos.
1c. C5
- Belongs to next gen compute optimized family
- Used for:
	- Running compute intensive workloads like batch processing, Machine Learning, high level computing, etc.
2. Memory optimized instances
2a. R5 & R5a
- Used by applications requiring adequate memory such as large scale databases, data analysis and other applications. R5 maximizes performance and reduces latency.
2b. X1 and X1e
- Designed for large scale memory intensive applications such as SAP HANA. Powered by intel xeon E7-8800 processor.

3. Accelerated computing instances
3a. P3
- Used for high level computing, fluid dynamics, recognition applications
3b. G3
- Used for running high performance graphical applications for 3D rendering, visualizations rendering. Powered by NVIDIA grid.
3c. F1
- uses field programmable gate arrays, with this you can scale applications up or down.

---
## Part 2

4. Storage optimization instances
- Used for high sequential read write access on large scale datasets.

a) H1 and D2
- Powered by high frequency Intel Xeon processors that offers high disk throughput.
- Use: Datawarehouses applications, data processing.

b) I3
- Offers non-volatile memory express designed for high sequential access, high throughput.
- Use: Transactional databases, warehouses, analytics.

5. Burstable performance instance
    - Fixed performance instances: Will have to end the process, if utilization goes above throughput we have to end the performance. Like our normal systems.
    - Burst performance instances: Creates a new instance and divides the work.
        - Has specific baseline
        - If more memory or if it goes beyond capacity it creates or 'bursts' another instance hence "Burst"

---

Major features
- Deployment
- Management
- Scaling

CPU credits =  System occupied memory * Time taken


