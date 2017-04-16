import { combineReducers, createStore } from 'redux';

export default store = createStore(combineReducers({

}));

const reduxSchema = {
  userItems: [
    {
      title,
      author,
      type,
      stage,
      readDate,
      descr,
      review,
      reviewDraftNotes,
      quotes,
      partsToRevisit: [{
        note,
        coords
      }],
      tags,
      links,
      pluses,
      minuses,
      plOrMn
    }
  ],
  user: {
    name,
    authProviders,
    reviews,
  },
  addBtnShown: true
}
