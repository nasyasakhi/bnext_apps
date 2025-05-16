import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    final path =
        AutoRouter.of(route.navigator!.context).navigationHistory.urlState.path;

    log('[ROUTE : PUSH] ${route.settings.name} ("$path")');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    final path =
        AutoRouter.of(route.navigator!.context).navigationHistory.urlState.path;

    log('[ROUTE : POP] ${route.settings.name} ("$path")');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    final path =
        AutoRouter.of(route.navigator!.context).navigationHistory.urlState.path;

    log('[ROUTE : REMOVE] ${route.settings.name} ("$path")');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    final newPath = (newRoute != null)
        ? AutoRouter.of(newRoute.navigator!.context)
            .navigationHistory
            .urlState
            .path
        : null;
    final oldPath = (oldRoute != null)
        ? AutoRouter.of(oldRoute.navigator!.context)
            .navigationHistory
            .urlState
            .path
        : null;

    log('[ROUTE : REPLACE] ${newRoute?.settings.name} ("$newPath") => ${oldRoute?.settings.name} ("$oldPath")');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    log('[TAB ROUTE : VISIT] ${route.name} ("${route.path}")');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    log('[TAB ROUTE : RE-VISIT] ${route.name} ("${route.path}")');
  }
}
