/*import Ionicons from '@expo/vector-icons/Ionicons';
import { StyleSheet, Image, Platform } from 'react-native';

import { Collapsible } from '@/components/Collapsible';
import { ExternalLink } from '@/components/ExternalLink';
import ParallaxScrollView from '@/components/ParallaxScrollView';
import { ThemedText } from '@/components/ThemedText';
import { ThemedView } from '@/components/ThemedView';

export default function TabTwoScreen() {
  return (

      <>Name</>
   
  );
}

const styles = StyleSheet.create({
  headerImage: {
    color: '#808080',
    bottom: -90,
    left: -35,
    position: 'absolute',
  },
  titleContainer: {
    flexDirection: 'row',
    gap: 8,
  },
});
*/
import React from 'react';
import { View, Text, Image, ScrollView, TouchableOpacity, Linking } from 'react-native';
import { PaperProvider,IconButton } from 'react-native-paper';
import { Avatar, Card, Title, Paragraph, Button } from 'react-native-paper';
const ProfileView = () => {

    const friends = [
        {
            id:1,
            avatar :'https://bootdey.com/img/Content/avatar/avatar2.png',
            name:'John Doe',
            age:'30',
        },
        {
            id:2,
            avatar :'https://bootdey.com/img/Content/avatar/avatar3.png',
            name:'John Doe',
            age:'30',
        },
        {
            id:3,
            avatar :'https://bootdey.com/img/Content/avatar/avatar4.png',
            name:'John Doe',
            age:'30',
        },
        {
            id:4,
            avatar :'https://bootdey.com/img/Content/avatar/avatar5.png',
            name:'John Doe',
            age:'30',
        },
        {
            id:5,
            avatar :'https://bootdey.com/img/Content/avatar/avatar5.png',
            name:'John Doe',
            age:'30',
        },
        {
            id:6,
            avatar :'https://bootdey.com/img/Content/avatar/avatar6.png',
            name:'John Doe',
            age:'30',
        },
    ]
    const user = {name:"John Doe", email:"john@gmail.com", contact: "8442543433"};
  const handleEditPress = () => {

  }

  return (
    <ScrollView style={styles.container}>
        <View style={styles.headerContainer}>
            <Image
                style={styles.coverPhoto}
                source={{ uri: 'https://picsum.photos/700' }}       />
            <View style={styles.profileContainer}>
                <Image
                style={styles.profilePhoto}
                source={{uri: 'https://www.bootdey.com/img/Content/avatar/avatar1.png'}}
                />
                <Text style={styles.nameText}>My name is John Doe</Text>
            </View>
    
        </View>

      <View style={{padding: '3px'}}>
        <Card style={{backgroundColor: '#fff'}}>
    <Card.Title title="Contact: 8793645645"/>
    <Card.Title title="Emergency Contact: 8493733251"/>
    <Card.Title title="Email: johnd@gmail.com"/>
    <Card.Title title="Address: 59 West 46th Street, New York City, NY 10036"/>
    <Card.Actions>
      <Button>Edit</Button>
    </Card.Actions>
  </Card>
  </View>

        <View style={styles.section}>
            <Text style={styles.statCount}></Text>
            <Text style={styles.statLabel}>Family & Friends</Text>
        </View>

        <View style={styles.section}>
            <View>
                <ScrollView horizontal contentContainerStyle={styles.friendsScroll}>
                    {friends.map(({avatar, id}) => (
                        <View style={styles.friendCard} key={id}>
                            <Image style={styles.friendImage} source={{ uri: avatar }} />
                        </View>
                    ))}
                </ScrollView>
            </View>
        </View>
       
    </ScrollView>
  );
};

const styles = {
  container: {
    flex: 1,
    backgroundColor: '#fff',
  },
  headerContainer: {
    alignItems: 'center',
  },
  coverPhoto: {
    width: '100%',
    height: 140,
  },
  profileContainer: {
    alignItems: 'center',
    marginTop: -70,
  },
  profilePhoto: {
    width: 150,
    height: 150,
    borderRadius: 75,
  },
  nameText: {
    fontSize: 20,
    fontWeight: 'bold',
    marginTop: 10,
  },
  bioContainer: {
    padding: 15,
  },
  bioText: {
    fontSize: 16,
    textAlign:'center',
    color:'#A9A9A9'
  },
  section: {
    flexDirection:'row',
    alignItems: 'center',
    justifyContent: 'center',
    width:'100%',
    marginVertical:5,
    paddingHorizontal:10,
  },
  mycard:{
    flexDirection:'row',
    alignItems: 'center',
    justifyContent: 'center',
    width:'100%',
    marginVertical:15,
    paddingHorizontal:2,
  },
  statCount: {
    color: '#999',
    fontSize: 16,
    fontWeight: 'bold',
  },
  statLabel: {
    fontSize: 16,
    color: '#999',
    marginLeft:4
  },
  button: {
    backgroundColor: '#9400D3',
    borderRadius: 5,
    padding: 10,
    marginHorizontal: 20,
  },
  buttonText: {
    fontSize: 16,
    color: '#fff',
    textAlign: 'center',
  },
  friendCard:{
    width:50,
    height:50,
    borderRadius:25,
    marginLeft:2,
  },
  friendImage:{
    width:50,
    height:50,
    borderRadius:25,
  },
  friendsScroll:{
    paddingBottom:10,

  }
};

export default ProfileView;
