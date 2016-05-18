var MessagesContainer = React.createClass({

  componentWillMount() {
    this.fetchMessages();
    setInterval(this.fetchMessages, 1000);
  },

  fetchMessages() {
    $.getJSON(
      this.props.messagesPath,
      (data) => {
        console.log( "success " + data );
        this.setState({messages: data['messages']});
       }
      // (data) => {console.log( "success " + data.messages[1].body ); }
      // function (data) { this.setState({messages: data}); };
    );
  },

  getInitialState() {
    return {messages: []};
  },

  render() {
    return (<Messages messages={this.state.messages} />);
  }
});
