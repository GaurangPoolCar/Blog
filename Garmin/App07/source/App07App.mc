using Toybox.Application as App;

class App07App extends App.AppBase {

    var positionView;

    function onStart() {
        Position.enableLocationEvents(Position.LOCATION_CONTINUOUS, method(:onPosition));
    }

    function onStop() {
        Position.enableLocationEvents(Position.LOCATION_DISABLE, method(:onPosition));
    }

    function onPosition(info) {
        positionView.setPosition(info);
    }

    function getInitialView() {
        positionView = new App07View();
        return [ positionView ];
    }
}