rs.initiate({
  _id: "replica-set",
  members: [
    { _id: 0, host: "main:27017" },
    { _id: 1, host: "worker1:27017" },
    { _id: 2, host: "worker2:27017" },
  ],
});
