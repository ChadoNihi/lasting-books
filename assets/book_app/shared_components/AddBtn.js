import Inferno from 'inferno';

const AddBtn = ({addBtnShown})=> {
	return <button>+</button>;
}

const mapDispatchToProps = (dispatch) => {
  return {
    // addPollToPolls: (poll) => dispatch(addPollToPolls(poll)),
  };
}

const mapStateToProps = (state) => {
  return {
    addBtnShown: state.addBtnShown
  };
}

export default connect(
    mapStateToProps,
		mapDispatchToProps
)(AddBtn);
