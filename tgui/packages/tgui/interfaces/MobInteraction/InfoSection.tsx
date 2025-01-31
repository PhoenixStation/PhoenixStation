import { useBackend } from '../../backend';
import {
  BlockQuote,
  Grid,
  Icon,
  ProgressBar,
  Section,
  Stack,
} from '../../components';

type HeaderInfo = {
  isTargetSelf: boolean;
  interactingWith: string;
  pleasure: number;
  maxPleasure: number;
  arousal: number;
  maxArousal: number;
  pain: number;
  maxPain: number;
  selfAttributes: string[];
  theirAttributes: string[];
  theirPleasure: number;
  theirMaxPleasure: number;
  theirArousal: number;
  theirMaxArousal: number;
  theirPain: number;
  theirMaxPain: number;
};

export const InfoSection = () => {
  const { act, data } = useBackend<HeaderInfo>();
  const {
    isTargetSelf,
    interactingWith,
    pleasure,
    maxPleasure,
    arousal,
    maxArousal,
    pain,
    maxPain,
    selfAttributes,
    theirAttributes,
    theirPleasure,
    theirMaxPleasure,
    theirArousal,
    theirMaxArousal,
    theirPain,
    theirMaxPain,
  } = data;
  return (
    <Section title={interactingWith} fill>
      <Stack vertical fill>
        <Stack.Item grow basis={0}>
          <Section fill scrollable>
            <Grid>
              <Grid.Column>
                <BlockQuote>
                  You...
                  <br />
                  {selfAttributes.map((attribute) => (
                    <div key={attribute}>
                      {attribute}
                      <br />
                    </div>
                  ))}
                </BlockQuote>
              </Grid.Column>
              {!isTargetSelf ? (
                <Grid.Column>
                  <BlockQuote>
                    They...
                    <br />
                    {theirAttributes.map((attribute) => (
                      <div key={attribute}>
                        {attribute}
                        <br />
                      </div>
                    ))}
                  </BlockQuote>
                </Grid.Column>
              ) : null}
            </Grid>
          </Section>
        </Stack.Item>
        <Stack.Item>
          <Stack fill>
            <Stack.Item grow>
              <Stack vertical>
                <Stack.Item>
                  <ProgressBar
                    value={pleasure}
                    maxValue={maxPleasure}
                    color="purple"
                  >
                    <Icon name="heart" /> Pleasure
                  </ProgressBar>
                </Stack.Item>
                <Stack.Item>
                  <ProgressBar
                    value={arousal}
                    maxValue={maxArousal}
                    color="pink"
                  >
                    <Icon name="tint" /> Arousal
                  </ProgressBar>
                </Stack.Item>
                <Stack.Item>
                  <ProgressBar value={pain} maxValue={maxPain} color="red">
                    <Icon name="bolt" /> Pain
                  </ProgressBar>
                </Stack.Item>
              </Stack>
            </Stack.Item>
            {!isTargetSelf ? (
              <Stack.Item grow>
                <Stack vertical>
                  <Stack.Item>
                    <ProgressBar
                      value={theirPleasure}
                      maxValue={theirMaxPleasure}
                      color="purple"
                    >
                      <Icon name="heart" /> Pleasure
                    </ProgressBar>
                  </Stack.Item>
                  <Stack.Item>
                    <ProgressBar
                      value={theirArousal}
                      maxValue={theirMaxArousal}
                      color="pink"
                    >
                      <Icon name="tint" /> Arousal
                    </ProgressBar>
                  </Stack.Item>
                  <Stack.Item>
                    <ProgressBar
                      value={theirPain}
                      maxValue={theirMaxPain}
                      color="red"
                    >
                      <Icon name="bolt" /> Pain
                    </ProgressBar>
                  </Stack.Item>
                </Stack>
              </Stack.Item>
            ) : null}
          </Stack>
        </Stack.Item>
      </Stack>
    </Section>
  );
};
