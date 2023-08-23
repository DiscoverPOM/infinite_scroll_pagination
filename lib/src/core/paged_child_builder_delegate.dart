import 'package:flutter/widgets.dart';

typedef ItemWidgetBuilder<ItemType> = Widget Function(
  BuildContext context,
  ItemType item,
  int index,
);

/// Supplies builders for the visual components of paged views.
///
/// The generic type [ItemType] must be specified in order to properly identify
/// the list item’s type.
class PagedChildBuilderDelegate<ItemType> {
  PagedChildBuilderDelegate({
    required this.itemBuilder,
    this.firstPageErrorIndicatorBuilder,
    this.newPageErrorIndicatorBuilder,
    this.firstPageProgressIndicatorBuilder,
    this.newPageProgressIndicatorBuilder,
    this.noItemsFoundIndicatorBuilder,
    this.noMoreItemsIndicatorBuilder,
    this.sliverFirstPageProgressIndicatorBuilder,
    this.sliverFirstPageErrorIndicatorBuilder,
    this.sliverNoItemsFoundIndicatorBuilder,
    this.animateTransitions = false,
    this.transitionDuration = const Duration(milliseconds: 250),
  });

  /// The builder for list items.
  final ItemWidgetBuilder<ItemType> itemBuilder;

  /// The sliver widget for the first page's error indicator.
  /// If present, it is used instead of [firstPageErrorIndicatorBuilder]
  final Widget? sliverFirstPageErrorIndicatorBuilder;

  /// The builder for the first page's error indicator.
  final WidgetBuilder? firstPageErrorIndicatorBuilder;

  /// The builder for a new page's error indicator.
  final WidgetBuilder? newPageErrorIndicatorBuilder;

  /// The sliver widget for the first page's progress indicator.
  /// If present, it is used instead of [firstPageProgressIndicatorBuilder]
  final Widget? sliverFirstPageProgressIndicatorBuilder;

  /// The builder for the first page's progress indicator.
  final WidgetBuilder? firstPageProgressIndicatorBuilder;

  /// The builder for a new page's progress indicator.
  final WidgetBuilder? newPageProgressIndicatorBuilder;

  /// The sliver widget for no items list indicator.
  /// If present, it is used instead of [noItemsFoundIndicatorBuilder]
  final Widget? sliverNoItemsFoundIndicatorBuilder;

  /// The builder for a no items list indicator.
  final WidgetBuilder? noItemsFoundIndicatorBuilder;

  /// The builder for an indicator that all items have been fetched.
  final WidgetBuilder? noMoreItemsIndicatorBuilder;

  /// Whether status transitions should be animated.
  final bool animateTransitions;

  /// The duration of animated transitions when [animateTransitions] is `true`.
  final Duration transitionDuration;
}
