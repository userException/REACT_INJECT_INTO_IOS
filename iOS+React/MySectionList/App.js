/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import {Platform, StyleSheet, Text, View, SectionList, Button, NativeModules, TouchableHighlight} from 'react-native';

var ReactCallbackManager = NativeModules.ReactCallbackManager;

export default class SectionListBasics extends Component {

  backTap = () => {
    ReactCallbackManager.dismissModalView();
  }

  render() {
    return (

      <View style = {styles.container}>
      <View style = {styles.navBarStyle}>
      <TouchableHighlight style={{ width: 70, marginTop:10, marginBottom:10, height:40}}
        underlayColor='#0abde3'
        onPress={this.backTap}>
      <Text style={{color:'white', fontSize:18, marginTop:20, marginLeft:10}}>Back</Text>
</TouchableHighlight>

      </View>
      <View style = {{flex: 0.9}}>
        <SectionList
          sections={[
            {aTitle: 'D', data: [{key:'Door'}, {key:'Day'}, {key:'Dusk'}, {key:'Dawn'}]},
            {aTitle: 'J', data: [{key:'Jam'}, {key:'Jelly'}, {key:'Jump'}, {key:'Joy'}]},
          ]}
          renderItem={({item}) => <Text style={styles.item}>{item.key}</Text>}
          renderSectionHeader={({section}) => <Text style={styles.sectionHeader}>{section.aTitle}</Text>}
          keyExtractor= {item => item.key}
        />
      </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container:{
    flex: 1,
  },

  navBarStyle: {
    backgroundColor: '#0abde3',
    flex: 0.1,
  },

  navBarTitleStyle: {
    textAlign: 'center',
    marginTop: 30,
    fontSize: 20,
    color: 'white',
    fontWeight: '400'
  },

  listStyle1: {
    flex:1,
    paddingTop: 0,
    backgroundColor: 'white'
  },
  listStyle2: {
    flex:0.5,
    paddingTop: 0,
    backgroundColor: 'yellow'
  },
  nameTags:{
    fontSize: 18,
    height: 44
  },
  sectionHeader: {
    paddingTop: 5,
    paddingLeft: 10,
    paddingRight: 10,
    paddingBottom: 2,
    fontSize: 14,
    fontWeight: 'bold',
    backgroundColor: 'rgba(247,247,247,1.0)',
  },
  item: {
    padding: 20,
    fontSize: 18,
    height: 44,
  },

  backBtnStyle: {
    fontSize: 40,
    backgroundColor:'red'
  },
  })
