import './App.css';
import { BrowserRouter, Routes, Route } from 'react-router-dom'

import Register from './pages/Register';
import Login from './pages/Login';
import Subtest1Open from './pages/Subtest1Open';
import Subtest1 from './pages/Subtest1';
import Subtest2Open from './pages/Subtest2Open';
import Subtest2 from './pages/Subtest2';
import Subtest3Open from './pages/Subtest3Open'
import Subtest3 from './pages/Subtest3';
import Subtest4Open from './pages/Subtest4Open';
import Subtest4 from './pages/Subtest4';
import Dashboard from './pages/Dashboard'
import Finish from './pages/Finish';

import Restricted from './restriction/Restircted'

function App() {
  
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          
          <Route path='/' element={<Register/>}/>
          <Route path='/login' element={<Login/>}/>
          
          <Route element={<Restricted/>}>
            <Route path='/section-1' element={<Subtest1Open/>}/>
            <Route path='/subtest-1' element={<Subtest1/>}/>
            <Route path='/section-2' element={<Subtest2Open/>}/>
            <Route path='/subtest-2' element={<Subtest2/>}/> 
            <Route path='/section-3' element={<Subtest3Open/>}/>
            <Route path='/subtest-3' element={<Subtest3/>}/>
            <Route path='/section-4' element={<Subtest4Open/>}/>
            <Route path='/subtest-4' element={<Subtest4/>}/>
            <Route path='/finish' element={<Finish/>}/>
            <Route path='/dashoard' element={<Dashboard/>}/>
          </Route>
        </Routes>
      </BrowserRouter>
      
    </div>
  );
}

export default App;
