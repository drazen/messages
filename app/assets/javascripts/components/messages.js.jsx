var ReactCSSTransitionGroup = React.addons.CSSTransitionGroup;

var Messages = React.createClass({
  render() {
    var buildMessage = function(messageItem) {
      return <Message key={messageItem.id} message={messageItem} />
    }
    return (
      <div>
        <ReactCSSTransitionGroup transitionName="message">
          {this.props.messages.map(buildMessage)}
        </ReactCSSTransitionGroup>
      </div>
    );
  }
});


