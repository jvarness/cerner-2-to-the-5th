#include <pebble.h>
// cerner_2^5_2017
// Show your support for First Hand with the First Hand pebble watchface!
static Window *window;
static GBitmap *fh_logo;
static BitmapLayer *fh_layer;
static void load_window() {
  fh_logo = gbitmap_create_with_resource(RESOURCE_ID_FH_LOGO);
  fh_layer = bitmap_layer_create(GRect(PBL_IF_ROUND_ELSE(20,2), 35, 140, 76));
  bitmap_layer_set_compositing_mode(fh_layer, GCompOpSet);
  bitmap_layer_set_bitmap(fh_layer, fh_logo);
  layer_add_child(window_get_root_layer(window), bitmap_layer_get_layer(fh_layer));
}
static void unload_window() {
  gbitmap_destroy(fh_logo);
  bitmap_layer_destroy(fh_layer);
}
static void fh_init() {
  window = window_create();
  window_set_window_handlers(window, (WindowHandlers) {
    .load = load_window,
    .unload = unload_window
  });
  window_set_background_color(window, GColorWhite);
  window_stack_push(window, false);
}
static void fh_deinit() {
  window_destroy(window);
}
int main(void) {
  fh_init();
  app_event_loop();
  fh_deinit();
}