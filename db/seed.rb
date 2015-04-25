Network.delete_all
nbc = Network.create(name: "NBC")
bbc = Network.create(name: "BBC")
Show.delete_all
Show.create(name:"Mad Men",day_of_week: "Sunday",time_of_day: 12,network: nbc)
Show.create(name:"Community",day_of_week: "Thursday",time_of_day: 22,network: bbc)