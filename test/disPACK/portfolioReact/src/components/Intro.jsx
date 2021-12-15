import './style/Intro.css'
import Me from '../../dist/notion-thinkingGirl.png'
// import Me from '../../dist/443-4431063_notion-notion-goals-template.jpg'

const Intro = () => {
  return(
    <div className="i-left">
    <div className="i-left-wrapper">
      <h2 className="i-intro">welcome my friend</h2>
      <h1 className="i-name">*** CO</h1>
      <div className="i-title">
        <div className="i-title-wrapper">
          <div className="i-title-item">web dev</div>
          <div className="i-title-item">ui/ux des</div>
          <div className="i-title-item">photographer</div>
          <div className="i-title-item">writer</div>
          <div className="i-title-item">cc(content creator)</div>
        </div>
      </div>
      <div className="i-desc">
        The MIT License (MIT)
      </div>
    </div>
    <div className="i-right">
      <div className="i-bg"></div>
      <img src={Me} alt="" className="i-img" />
    </div>
    </div>
  )
}
export default Intro
