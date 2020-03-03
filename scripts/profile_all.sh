docker exec -it acmeair-flightservice-java /tmp/profiler.sh -d 30 -f /tmp/flight.svg 1
docker exec -it acmeair-bookingservice-java /tmp/profiler.sh -d 30 -f /tmp/booking.svg 1
docker exec -it acmeair-customerservice-java /tmp/profiler.sh -d 30 -f /tmp/customer.svg 1
docker exec -it acmeair-authservice-java /tmp/profiler.sh -d 30 -f /tmp/auth.svg 1

docker cp  acmeair-flightservice-java:/tmp/flight.svg .
docker cp  acmeair-bookingservice-java:/tmp/booking.svg .
docker cp  acmeair-customerservice-java:/tmp/customer.svg .
docker cp  acmeair-authservice-java:/tmp/auth.svg .

#docker exec -it acmeair-flightservice-java /tmp/profiler.sh -d 30 -e alloc -f /tmp/flight_alloc.svg 1
#docker exec -it acmeair-bookingservice-java /tmp/profiler.sh -d 30 -e alloc -f /tmp/booking_alloc.svg 1
#docker exec -it acmeair-customerservice-java /tmp/profiler.sh -d 30 -e alloc -f /tmp/customer_alloc.svg 1
#docker exec -it acmeair-authservice-java /tmp/profiler.sh -d 30 -e alloc -f /tmp/auth_alloc.svg 1

docker cp  acmeair-flightservice-java:/tmp/flight_alloc.svg .
docker cp  acmeair-bookingservice-java:/tmp/booking_alloc.svg .
docker cp  acmeair-customerservice-java:/tmp/customer_alloc.svg .
docker cp  acmeair-authservice-java:/tmp/auth_alloc.svg .

#sudo sysctl kernel.perf_event_mlock_kb=30000
#sudo sysctl kernel.perf_event_max_stack=300
#sudo sysctl kernel.kptr_restrict=0
#sudo sysctl kernel.perf_event_paranoid=0
