angular.module("doubtfire.common.modals.badges-modal", [])

#
# Modal to show Doubtfire version info
#
.factory("BadgesModal", ($modal) ->
  BadgesModal = {}

  BadgesModal.show = ->
    $modal.open
      templateUrl: 'common/modals/badges-modal/badges-modal.tpl.html'
      controller: 'BadgesModalCtrl'
      size: 'lg'

  BadgesModal
)

.controller('BadgesModalCtrl', ($scope, $modalInstance) ->
  badges = [
    ""
    ""
    ""
    ""
    ""
    ""
    ""
    ""
    ""
    ""
    ""
    ""
  ]
  # initial data
  $scope.badges = _.map badges, (b) ->
    avatar:   '/assets/images/person-unknown.gif',
    name: 'temp-name'
  $scope.close = ->
    $modalInstance.dismiss()
)
