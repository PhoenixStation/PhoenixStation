import { useDispatch, useSelector } from 'tgui/backend';

import { toggleEmotes } from './actions';
import { selectEmotes } from './selectors';

export const useEmotes = () => {
  const emotes = useSelector(selectEmotes);
  const dispatch = useDispatch();
  return {
    ...emotes,
    toggle: () => dispatch(toggleEmotes()),
  };
};
