interface EmotesState {
  visible: boolean;
  list: Record<string, string>;
}

const initialState: EmotesState = {
  visible: false,
  list: {},
};

export const emotesReducer = (
  state = initialState,
  action: { type: string; payload: any },
) => {
  const { type, payload } = action;

  switch (type) {
    case 'emotes/toggle':
      return {
        ...state,
        visible: !state.visible,
      };
    case 'emotes/setList':
      return {
        ...state,
        list: payload,
      };
    default:
      return state;
  }
};
