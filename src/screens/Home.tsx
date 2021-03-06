import React from 'react';

import {StackScreenProps} from '@react-navigation/stack';
import {ThemeContext} from '../utils/ThemeContext';

import {View, StyleSheet} from 'react-native';
import {getCommonStyles} from '../utils/CommonStyles';

type Props = StackScreenProps<StackParamList, 'Home'>;

export default function Home(_navProps: Props) {
  let {theme} = React.useContext(ThemeContext);

  const ls = StyleSheet.create({
    debugContainer: {
      height: 200,
      width: 200,
      backgroundColor: '#f44336',
    },
  });

  const styles = getCommonStyles(theme);

  return (
    <View style={styles.root}>
      {/* debug square, remove this! */}
      <View style={ls.debugContainer} />
    </View>
  );
}
