var Message = React.createClass({
  render() {
    return <div className="well well-sm">
        <p>{this.props.message.body}</p>
        <small className="text-muted pull-right">
          {this.props.message.created_at}
        </small>
        <br></br>
      </div>;
  }
});

