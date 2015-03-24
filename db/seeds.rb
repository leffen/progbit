[
        {name: 'Arin Morten Kjempenes', title: 'CEO', email: 'arin@progbit.no', image:'arin.jpg'},
        {name: 'Terje Rønning Eltvik', title: 'Senior HW development engineer', email: 'terje@progbit.no', image:'terje.jpg'},
        {name: 'Hans Strømsøyen', title: 'Senior HW development engineer', email: 'hans@progbit.no', image:'hans.jpg'}
].each do |data|
  empl = Employee.where(name: data[:name]).first_or_create
  empl.title = data[:title]
  empl.email = data[:email]
  empl.image = data[:image]
  empl.save
end