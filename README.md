# Cubtale Case Study

This flutter project is an admin panel for Cubtale that is part of the case study I got as part of the interview process at Cubtale.

The code is divided into 4 layers: Domain, Application, Infrastructure and Presentation. Separation of the code into these layers allows for modularity and scalability while also splitting the UI from the business logic.

## Known Bugs and Issues
1. Responsiveness: Since the API calls gave a CORS error, I was not able to test the application fully on the website. Therefore, I had to test most of the application on a smartphone environment. Consequently, there might be some minor UI issues such as overflows.
2. When switching between different items on the nav bar, for example between Search by Mail and Search by ID, the content of the text field does not reset to an empty state as the same UI is being utilized in both cases.
3. In some areas, I changed the UI a little bit either because I found it better or it was more convenient to implement it. One such case is when the details of the new users are shown.
