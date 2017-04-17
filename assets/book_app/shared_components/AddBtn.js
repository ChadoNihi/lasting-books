import Inferno from 'inferno';

const AddBtn = ({addBtnShown})=> {
	return <button>+</button>;
}

const mapStateToProps = (state) => {
  return {
    addBtnShown: state.addBtnShown
  };
}

const mapDispatchToProps = (dispatch) => {
  return {
    // addPollToPolls: (poll) => dispatch(addPollToPolls(poll)),
  };
}

export default connect(
    mapStateToProps,
		mapDispatchToProps
)(AddBtn);
