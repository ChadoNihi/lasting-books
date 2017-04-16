import Inferno from 'inferno';

const ItemListScreen = ({items})=> {
	return <div>I am a functional component</div>;
}

const mapDispatchToProps = (dispatch) => {
  return {
    // addPollToPolls: (poll) => dispatch(addPollToPolls(poll)),
  };
}

const mapStateToProps = (state) => {
  return {
  };
}

export default connect(
    mapStateToProps,
		mapDispatchToProps
)(ItemListScreen);
