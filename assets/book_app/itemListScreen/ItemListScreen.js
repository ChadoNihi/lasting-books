import Inferno from 'inferno';

export default function ItemListScreen({items}) {
	return <div>I am a functional component</div>;
}

export connect(
    mapStateToProps
)(ItemListScreen);
