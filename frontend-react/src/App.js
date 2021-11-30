import "./App.css";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";

import Mainpage from "./Mainpage";
import Upload from "./Uploadpage";
import Preprocess from "./Preprocesspage";
import Identify from "./Identifypage";
import Partner from "./Partnerpage";
import NavBar from "./NavBar";

const App = () => {
  return (
    <Router>
      <NavBar />
      <div>
        <Switch>
          <Route path="/" exact component={Mainpage} />
          <Route path="/upload" component={Upload} />
          <Route path="/preprocess" component={Preprocess} />
          <Route path="/identify" component={Identify} />
          <Route path="/partner" component={Partner} />
        </Switch>
      </div>
    </Router>
  );
};

export default App;
