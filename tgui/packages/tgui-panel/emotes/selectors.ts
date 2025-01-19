export const selectEmotes = (state: any) => {
  if (!state || !state.emotes) {
    return {
      visible: false,
      list: {},
    };
  }
  return state.emotes;
};
