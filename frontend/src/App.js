import React from 'react';
import './App.css';
import { Route, Switch } from 'react-router-dom';
import NavBar from './components/NavBar';
import Login from './components/Login';
import SeekerProfile from './components/SeekerProfile';
import CompanyProfile from './components/CompanyProfile';
import CompanyRegister from './components/CompanyRegister';
import SeekerRegister from './components/SeekerRegister';
import Home from './components/Home';
import ProfileUpdate from './components/ProfileUpdate';
import JobPost from './components/JobPost';
function App() {
  return (
    <div className='container'>
      <NavBar />

      <Switch>
        <Route exact path='/' component={Home} />
        <Route exact path='/login' component={Login} />
        <Route exact path='/seeker/:id' component={SeekerProfile} />
        <Route exact path='/company/:id' component={CompanyProfile} />
        <Route exact path='/seeker_register' component={SeekerRegister} />
        <Route exact path='/company_register' component={CompanyRegister} />
        <Route exact path='/profile_update/:id' component={ProfileUpdate} />
        <Route exact path='/job_post' component={JobPost} />
      </Switch>
    </div>
  );
}

export default App;
