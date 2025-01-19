export interface EmoteData {
  key: string;
  name: string;
}

export const createEmote = (obj?: Partial<EmoteData>): EmoteData => ({
  key: '',
  name: '',
  ...obj,
});
