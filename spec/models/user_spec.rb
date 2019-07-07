require 'rails_helper' 

# Controller Routing Tests 
RSpec.describe Api::SessionsController, type: :controller do 
  describe Api::SessionsController do
    it { should route(:post, 'api/sessions').to(action: :create)}
  end
end 

RSpec.describe Api::UsersController, type: :controller do 
  describe Api::UsersController do
    it { should route(:get, 'api/users').to(action: :index) }
    it { should route(:get, 'api/users/1').to(action: :show, id: 1) }
    it { should route(:patch, 'api/users/2').to(action: :update, id: 2) }
    it { should route(:delete, 'api/users/4').to(action: :delete, id: 4) }
    it { should route(:post, 'api/users').to(action: :create)}
  end
end 

RSpec.describe Api::TripsController, type: :controller do 
  describe Api::TripsController do
    it { should route(:get, 'api/trips').to(action: :index) }
    it { should route(:get, 'api/trips/1').to(action: :show, id: 1) }
    it { should route(:patch, 'api/trips/2').to(action: :update, id: 2) }
    it { should route(:delete, 'api/trips/4').to(action: :destroy, id: 4) }
    it { should route(:post, 'api/trips').to(action: :create)}
  end
end 

RSpec.describe Api::ParksController, type: :controller do 
  describe Api::ParksController do
    it { should route(:get, 'api/parks').to(action: :index) }
    it { should route(:get, 'api/parks/1').to(action: :show, id: 1) }
    it { should route(:patch, 'api/parks/2').to(action: :update, id: 2) }
    it { should route(:delete, 'api/parks/4').to(action: :destroy, id: 4) }
    it { should route(:post, 'api/parks').to(action: :create)}
  end
end 

RSpec.describe Api::InterestsController, type: :controller do 
  describe Api::InterestsController do
    it { should route(:get, 'api/interests').to(action: :index) }
    it { should route(:get, 'api/interests/1').to(action: :show, id: 1) }
    it { should route(:patch, 'api/interests/2').to(action: :update, id: 2) }
    it { should route(:delete, 'api/interests/4').to(action: :destroy, id: 4) }
    it { should route(:post, 'api/interests').to(action: :create)}
  end
end 

RSpec.describe Api::AttractionsController, type: :controller do 
  describe Api::AttractionsController do
    it { should route(:get, 'api/attractions').to(action: :index) }
    it { should route(:get, 'api/attractions/1').to(action: :show, id: 1) }
    it { should route(:patch, 'api/attractions/2').to(action: :update, id: 2) }
    it { should route(:delete, 'api/attractions/4').to(action: :destroy, id: 4) }
    it { should route(:post, 'api/attractions').to(action: :create)}
  end
end 

RSpec.describe Api::TicketsController, type: :controller do 
  describe Api::TicketsController do
    it { should route(:get, 'api/tickets').to(action: :index) }
    it { should route(:get, 'api/tickets/1').to(action: :show, id: 1) }
    it { should route(:patch, 'api/tickets/2').to(action: :update, id: 2) }
    it { should route(:delete, 'api/tickets/4').to(action: :destroy, id: 4) }
    it { should route(:post, 'api/tickets').to(action: :create)}
  end
end 


