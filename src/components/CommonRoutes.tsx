interface Props {
  title: string,
  icon: string,
  pathName: string,
  path: string,
};


function CommonRoutes(prop: Props) {
  return(
    <>
      <div className="common_routes">
        <h3 className="title">{prop.title}</h3>
        <div className="path">
          <img className="icon" src={prop.icon} alt="icon" />
          <a href={prop.path}>{prop.pathName}</a>
        </div>
      </div>
    </>
  );
}

export default CommonRoutes;