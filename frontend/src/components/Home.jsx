import React, { Component } from 'react';
import axios from '../axios';
class Home extends Component {
  state = {
    jobs: [],
  };
  async componentDidMount() {
    const result = await axios.get('/all_jobs');
    this.setState({
      jobs: result.data,
    });
  }

  applyJobs = async (id) => {
    const emp_id = localStorage.getItem('employee_id');
    //CHECK THE EMPLOY AS RESUME HAS OR NOT
    const url = `get_emp/${emp_id}`;
    const seek = await axios.get(url);
    if (seek.data.resume_path === '') {
      this.props.history.push(`/profile_update/` + emp_id);
    }

    const data = {
      employee_id: emp_id,
      register_id: id.toString(),
      date: new Date().toJSON().slice(0, 10).replace(/-/g, '/'),
    };
    console.log(data);
    const result = await axios.post('/apply_job', data);
  };
  render() {
    const { jobs } = this.state;

    return (
      <div>
        <h4 className='text-info'>
          All Posted jobs: <strong>there total {jobs.length} availabe</strong>
        </h4>
        <div className='row'>
          {jobs.map((job) => (
            <div className='col-md-6' key={job.register_id}>
              <div className='mt-4'>
                <div className='list-group'>
                  <li
                    className='list-group-item list-group-item-action active'
                    aria-disabled='true'
                  >
                    {job.job_title}
                  </li>
                  <li className='list-group-item'>{job.job_description}</li>
                  <li className='list-group-item'>{job.salary}</li>
                  <li className='list-group-item'>{job.location}</li>
                  <li className='list-group-item'>{job.country}</li>
                  <li className='list-group-item'>
                    <button
                      className='btn btn-success btn-block'
                      onClick={() => this.applyJobs(job.register_id)}
                    >
                      Apply
                    </button>
                  </li>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    );
  }
}

export default Home;
