import React from 'react';
import { Link } from 'react-router-dom';
export default function NavBar() {
  return (
    <nav className='navbar navbar-expand-lg navbar-light bg-light mt-4'>
      <a className='navbar-brand' href='/'>
        JobPortal
      </a>
      <button
        className='navbar-toggler'
        type='button'
        data-toggle='collapse'
        data-target='#navbarNav'
        aria-controls='navbarNav'
        aria-expanded='false'
        aria-label='Toggle navigation'
      >
        <span className='navbar-toggler-icon'></span>
      </button>
      <div className='collapse navbar-collapse' id='navbarNav'>
        <ul className='navbar-nav'>
          <li className='nav-item active'>
            <a className='nav-link' href='/'>
              Home <span className='sr-only'>(current)</span>
            </a>
          </li>
          <li className='nav-item'>
            <a className='nav-link' href='/company_register'>
              Company Register
            </a>
          </li>
          <li className='nav-item'>
            <a className='nav-link' href='/seeker_register'>
              Job Seeker Register
            </a>
          </li>
          <li className='nav-item'>
            <Link className='nav-link' to='/login'>
              Login
            </Link>
          </li>
        </ul>
      </div>
    </nav>
  );
}
