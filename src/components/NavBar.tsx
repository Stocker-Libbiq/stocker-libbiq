import "../css/components/navbar.css";

interface Props {
  icon: string,
  title: string
  route: string,
};

function NavBar(props: Props) {
  return (
    <a className="navigation" href={props.route}>
      <img className="icon" src={props.icon} alt="icon" />
      <p className="title">{props.title}</p>
    </a>
  );
}

export default NavBar;