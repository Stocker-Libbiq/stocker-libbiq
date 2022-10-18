// style
import "../css/pages/homepage.css";

// components
import NavBar from "../components/NavBar";
import CommonRoutes from '../components/CommonRoutes';


const navigation = [
  {
    icon: "https://img.icons8.com/ios/50/000000/home.png",
    title: "Home",
    route: "/",
  },
  {
    icon: "https://img.icons8.com/ios/50/000000/like.png",
    title: "Reactivos",
    route: "/reacts",
  },
  {
    icon: "https://img.icons8.com/ios/50/000000/plus-math.png",
    title: "Stock",
    route: "/stock",
  },
  {
    icon: "https://img.icons8.com/ios/50/000000/user.png",
    title: "Estadisticas",
    route: "/stats",
  }
];

const commonRoutes = [
  {
    title: "Reactivos",
    icon: "https://img.icons8.com/ios/50/000000/like.png",
    pathName: "https://www.google.com",
    path: "https://www.google.com",
  },
  {
    title: "Stock",
    icon: "https://img.icons8.com/ios/50/000000/plus-math.png",
    pathName: "https://www.google.com",
    path: "https://www.google.com",
  },
  {
    title: "Estadisticas",
    icon: "https://img.icons8.com/ios/50/000000/user.png",
    pathName: "https://www.google.com",
    path: "https://www.google.com",
  },
  {
    title: "Reactivos",
    icon: "https://img.icons8.com/ios/50/000000/like.png",
    pathName: "https://www.google.com",
    path: "https://www.google.com",
  }
];

function HomePage() {
  return (
    <div className="container">
      <div className="navbar">
        <h1 className="title">Stocker</h1>
        
        <div className="navbar-navigations">
          {navigation.map((nav) => (
            <NavBar icon={nav.icon} title={nav.title} route={nav.route}/>
          ))}
        </div>

      </div>

      <div className="content">
        {commonRoutes.map((route) => (
          <CommonRoutes
            title={route.title} 
            icon={route.icon}
            pathName={route.pathName}
            path={route.path}
          />
        ))}
      </div>
    </div>
    
  );
}

export default HomePage;