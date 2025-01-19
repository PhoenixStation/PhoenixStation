import { createAction } from 'common/redux';

export const toggleEmotes = createAction('emotes/toggle');
export const setEmotesList = createAction('emotes/setList');
export const executeEmote = createAction('emotes/execute');
export const createEmote = createAction('emotes/create');
export const contextEmoteAction = createAction('emotes/contextAction');
