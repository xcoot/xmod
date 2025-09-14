.class public final Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mA11yAMEnableUri:Landroid/net/Uri;

.field public final mA11yAMMagnificationEnableUri:Landroid/net/Uri;

.field public final mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

.field public final mAccessibilityButtonTargetsUri:Landroid/net/Uri;

.field public final mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

.field public final mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

.field public final mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

.field public final mAlwaysOnMagnificationUri:Landroid/net/Uri;

.field public final mAmplifyAmbientSountEnableUri:Landroid/net/Uri;

.field public final mAudioDescriptionByDefaultUri:Landroid/net/Uri;

.field public final mAutoActionEnabledUri:Landroid/net/Uri;

.field public final mAutoclickEnabledUri:Landroid/net/Uri;

.field public final mBounceKeysEnabledUri:Landroid/net/Uri;

.field public final mBounceKeysThresholdUri:Landroid/net/Uri;

.field public final mColorLensEnableUri:Landroid/net/Uri;

.field public final mColorLensOpacityUri:Landroid/net/Uri;

.field public final mColorLensTypeUri:Landroid/net/Uri;

.field public final mColorReluminoEdgeThinknessUri:Landroid/net/Uri;

.field public final mColorReluminoEnableUri:Landroid/net/Uri;

.field public final mColorReluminoTypeUri:Landroid/net/Uri;

.field public final mCornerActionEnabledUri:Landroid/net/Uri;

.field public final mEnabledAccessibilityServicesUri:Landroid/net/Uri;

.field public final mHighContrastTextEnableUri:Landroid/net/Uri;

.field public final mHighTextContrastUri:Landroid/net/Uri;

.field public final mMagnificationCapabilityUri:Landroid/net/Uri;

.field public final mMagnificationFollowTypingUri:Landroid/net/Uri;

.field public final mMagnificationModeUri:Landroid/net/Uri;

.field public final mMagnificationmSingleFingerTripleTapEnabledUri:Landroid/net/Uri;

.field public final mNaviBarModeUri:Landroid/net/Uri;

.field public final mOneHandModeActivateUri:Landroid/net/Uri;

.field public final mScreenCurtainEnabledUri:Landroid/net/Uri;

.field public final mShowImeWithHardKeyboardUri:Landroid/net/Uri;

.field public final mSlowKeysEnabledUri:Landroid/net/Uri;

.field public final mSlowKeysThresholdUri:Landroid/net/Uri;

.field public final mStickyKeysEnabledUri:Landroid/net/Uri;

.field public final mStickyKeysUri:Landroid/net/Uri;

.field public final mTapDurationEnabledUri:Landroid/net/Uri;

.field public final mTouchBlockingEnabledUri:Landroid/net/Uri;

.field public final mTouchExplorationEnabledUri:Landroid/net/Uri;

.field public final mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

.field public final mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

.field public final mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    const-string/jumbo p1, "touch_exploration_enabled"

    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    .line 15
    const-string p1, "accessibility_display_magnification_enabled"

    .line 17
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationmSingleFingerTripleTapEnabledUri:Landroid/net/Uri;

    .line 23
    const-string p1, "accessibility_magnification_two_finger_triple_tap_enabled"

    .line 25
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    const-string p1, "accessibility_autoclick_enabled"

    .line 30
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoclickEnabledUri:Landroid/net/Uri;

    .line 36
    const-string p1, "accessibility_auto_action_type"

    .line 38
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoActionEnabledUri:Landroid/net/Uri;

    .line 44
    const-string p1, "accessibility_corner_action_enabled"

    .line 46
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mCornerActionEnabledUri:Landroid/net/Uri;

    .line 52
    const-string/jumbo p1, "enabled_accessibility_services"

    .line 55
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 61
    const-string/jumbo p1, "touch_exploration_granted_accessibility_services"

    .line 64
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    .line 70
    const-string/jumbo p1, "high_text_contrast_enabled"

    .line 73
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 76
    move-result-object p2

    .line 77
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 79
    const-string/jumbo p2, "enabled_accessibility_audio_description_by_default"

    .line 82
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    move-result-object p2

    .line 86
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    .line 88
    const-string p2, "accessibility_soft_keyboard_mode"

    .line 90
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    move-result-object p2

    .line 94
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

    .line 96
    const-string/jumbo p2, "show_ime_with_hard_keyboard"

    .line 99
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 102
    move-result-object p2

    .line 103
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    .line 105
    const-string/jumbo p2, "lcd_curtain"

    .line 108
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    move-result-object p2

    .line 112
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenCurtainEnabledUri:Landroid/net/Uri;

    .line 114
    const-string p2, "accessibility_shortcut_target_service"

    .line 116
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 119
    move-result-object p2

    .line 120
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    .line 122
    const-string p2, "accessibility_direct_access_target_service"

    .line 124
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 127
    move-result-object p2

    .line 128
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    .line 130
    const-string p2, "accessibility_button_target_component"

    .line 132
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 135
    move-result-object p2

    .line 136
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    .line 138
    const-string p2, "accessibility_button_targets"

    .line 140
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 143
    move-result-object p2

    .line 144
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    .line 146
    const-string p2, "accessibility_non_interactive_ui_timeout_ms"

    .line 148
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 151
    move-result-object p2

    .line 152
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 154
    const-string p2, "accessibility_interactive_ui_timeout_ms"

    .line 156
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 159
    move-result-object p2

    .line 160
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 162
    const-string p2, "accessibility_magnification_mode"

    .line 164
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 167
    move-result-object p2

    .line 168
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationModeUri:Landroid/net/Uri;

    .line 170
    const-string p2, "accessibility_magnification_capability"

    .line 172
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 175
    move-result-object p2

    .line 176
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationCapabilityUri:Landroid/net/Uri;

    .line 178
    const-string p2, "accessibility_magnification_follow_typing_enabled"

    .line 180
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 183
    move-result-object p2

    .line 184
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationFollowTypingUri:Landroid/net/Uri;

    .line 186
    const-string p2, "accessibility_magnification_always_on_enabled"

    .line 188
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 191
    move-result-object p2

    .line 192
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAlwaysOnMagnificationUri:Landroid/net/Uri;

    .line 194
    const-string/jumbo p2, "tap_duration_enabled"

    .line 197
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 200
    move-result-object p2

    .line 201
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTapDurationEnabledUri:Landroid/net/Uri;

    .line 203
    const-string/jumbo p2, "touch_blocking_enabled"

    .line 206
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 209
    move-result-object p2

    .line 210
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchBlockingEnabledUri:Landroid/net/Uri;

    .line 212
    const-string p2, "amplify_ambient_sound"

    .line 214
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 217
    move-result-object p2

    .line 218
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAmplifyAmbientSountEnableUri:Landroid/net/Uri;

    .line 220
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 223
    move-result-object p1

    .line 224
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighContrastTextEnableUri:Landroid/net/Uri;

    .line 226
    const-string/jumbo p1, "color_lens_switch"

    .line 229
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 232
    move-result-object p1

    .line 233
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensEnableUri:Landroid/net/Uri;

    .line 235
    const-string/jumbo p1, "color_lens_type"

    .line 238
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 241
    move-result-object p1

    .line 242
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensTypeUri:Landroid/net/Uri;

    .line 244
    const-string/jumbo p1, "color_lens_opacity"

    .line 247
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 250
    move-result-object p1

    .line 251
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensOpacityUri:Landroid/net/Uri;

    .line 253
    const-string/jumbo p1, "relumino_switch"

    .line 256
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 259
    move-result-object p1

    .line 260
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoEnableUri:Landroid/net/Uri;

    .line 262
    const-string/jumbo p1, "relumino_type"

    .line 265
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 268
    move-result-object p1

    .line 269
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoTypeUri:Landroid/net/Uri;

    .line 271
    const-string/jumbo p1, "relumino_edge_thickness"

    .line 274
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 277
    move-result-object p1

    .line 278
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoEdgeThinknessUri:Landroid/net/Uri;

    .line 280
    const-string/jumbo p1, "sticky_keys_enabled"

    .line 283
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 286
    move-result-object p1

    .line 287
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mStickyKeysEnabledUri:Landroid/net/Uri;

    .line 289
    const-string/jumbo p1, "bounce_keys_enabled"

    .line 292
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 295
    move-result-object p1

    .line 296
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mBounceKeysEnabledUri:Landroid/net/Uri;

    .line 298
    const-string/jumbo p1, "slow_keys_enabled"

    .line 301
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 304
    move-result-object p1

    .line 305
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSlowKeysEnabledUri:Landroid/net/Uri;

    .line 307
    const-string p1, "accessibility_sticky_keys"

    .line 309
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 312
    move-result-object p1

    .line 313
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mStickyKeysUri:Landroid/net/Uri;

    .line 315
    const-string p1, "accessibility_bounce_keys"

    .line 317
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 320
    move-result-object p1

    .line 321
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mBounceKeysThresholdUri:Landroid/net/Uri;

    .line 323
    const-string p1, "accessibility_slow_keys"

    .line 325
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 328
    move-result-object p1

    .line 329
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSlowKeysThresholdUri:Landroid/net/Uri;

    .line 331
    const-string/jumbo p1, "navigation_mode"

    .line 334
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 337
    move-result-object p1

    .line 338
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mNaviBarModeUri:Landroid/net/Uri;

    .line 340
    const-string p1, "assistant_menu"

    .line 342
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 345
    move-result-object p1

    .line 346
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMEnableUri:Landroid/net/Uri;

    .line 348
    const-string p1, "any_screen_running"

    .line 350
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 353
    move-result-object p1

    .line 354
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mOneHandModeActivateUri:Landroid/net/Uri;

    .line 356
    const-string p1, "assistant_menu_option_upperapps"

    .line 358
    invoke-static {p1}, Landroid/view/accessibility/A11yRune;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 361
    move-result-object p1

    .line 362
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMMagnificationEnableUri:Landroid/net/Uri;

    .line 364
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 6

    .line 1
    const-string/jumbo p1, "onChange():handle nothing - "

    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 6
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 11
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 13
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    .line 19
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v2, :cond_1

    .line 27
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 29
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    move-result-object p1

    .line 35
    const-string/jumbo p2, "touch_exploration_enabled"

    .line 38
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 40
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 43
    move-result p1

    .line 44
    if-ne p1, v4, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v4, v3

    .line 48
    :goto_0
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 50
    if-eq v4, p1, :cond_35

    .line 52
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 54
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 56
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 59
    goto/16 :goto_12

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_13

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationmSingleFingerTripleTapEnabledUri:Landroid/net/Uri;

    .line 66
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 72
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 74
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    move-result-object p1

    .line 80
    const-string p2, "accessibility_display_magnification_enabled"

    .line 82
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 84
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 87
    move-result p1

    .line 88
    if-ne p1, v4, :cond_2

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move v4, v3

    .line 92
    :goto_1
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 94
    if-eq v4, p1, :cond_35

    .line 96
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 98
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 100
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 103
    goto/16 :goto_12

    .line 105
    :cond_3
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationMultipleFingerMultipleTapGesture()Z

    .line 108
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoclickEnabledUri:Landroid/net/Uri;

    .line 110
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_5

    .line 116
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 118
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 123
    move-result-object p1

    .line 124
    const-string p2, "accessibility_autoclick_enabled"

    .line 126
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 128
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 131
    move-result p1

    .line 132
    if-ne p1, v4, :cond_4

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    move v4, v3

    .line 136
    :goto_2
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 138
    if-eq v4, p1, :cond_35

    .line 140
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 142
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 144
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 147
    goto/16 :goto_12

    .line 149
    :cond_5
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoActionEnabledUri:Landroid/net/Uri;

    .line 151
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_7

    .line 157
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 159
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 164
    move-result-object p1

    .line 165
    const-string p2, "accessibility_auto_action_type"

    .line 167
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 169
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_6

    .line 175
    goto :goto_3

    .line 176
    :cond_6
    move v4, v3

    .line 177
    :goto_3
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    .line 179
    if-eq v4, p1, :cond_35

    .line 181
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    .line 183
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 185
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 188
    goto/16 :goto_12

    .line 190
    :cond_7
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mCornerActionEnabledUri:Landroid/net/Uri;

    .line 192
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_9

    .line 198
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 200
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 205
    move-result-object p1

    .line 206
    const-string p2, "accessibility_corner_action_enabled"

    .line 208
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 210
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_8

    .line 216
    goto :goto_4

    .line 217
    :cond_8
    move v4, v3

    .line 218
    :goto_4
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    .line 220
    if-eq v4, p1, :cond_35

    .line 222
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    .line 224
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 226
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 229
    goto/16 :goto_12

    .line 231
    :cond_9
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 233
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_b

    .line 239
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 241
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_35

    .line 247
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 249
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 251
    iget p2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 253
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 255
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 257
    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 259
    iget v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 261
    if-eq v4, p2, :cond_a

    .line 263
    goto :goto_5

    .line 264
    :cond_a
    new-instance v4, Landroid/util/ArraySet;

    .line 266
    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 269
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    new-instance v2, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;

    .line 276
    const/4 v5, 0x2

    .line 277
    invoke-direct {v2, v5, p1}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    move-result-object p2

    .line 284
    invoke-static {v2, p2, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 287
    move-result-object p2

    .line 288
    iget-object p1, p1, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    .line 290
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    :goto_5
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->removeDisabledServicesFromTemporaryStatesLocked()V

    .line 296
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 298
    invoke-virtual {p1, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 301
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 303
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenReaderEnabled()Z

    .line 306
    move-result p1

    .line 307
    if-nez p1, :cond_35

    .line 309
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 311
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 313
    if-eqz p1, :cond_35

    .line 315
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semToggleDarkScreenMode()V

    .line 318
    goto/16 :goto_12

    .line 320
    :cond_b
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    .line 322
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_c

    .line 328
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 330
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 333
    move-result p1

    .line 334
    if-eqz p1, :cond_35

    .line 336
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 338
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 341
    goto/16 :goto_12

    .line 343
    :cond_c
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenCurtainEnabledUri:Landroid/net/Uri;

    .line 345
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_e

    .line 351
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 353
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 358
    move-result-object p1

    .line 359
    const-string/jumbo p2, "lcd_curtain"

    .line 362
    const/4 v1, -0x2

    .line 363
    invoke-static {p1, p2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 366
    move-result p1

    .line 367
    if-ne p1, v4, :cond_d

    .line 369
    goto/16 :goto_12

    .line 371
    :cond_d
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 373
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 375
    if-eqz p1, :cond_35

    .line 377
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semToggleDarkScreenMode()V

    .line 380
    goto/16 :goto_12

    .line 382
    :cond_e
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 384
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_10

    .line 390
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 392
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 397
    move-result-object p1

    .line 398
    const-string/jumbo p2, "high_text_contrast_enabled"

    .line 401
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 403
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 406
    move-result p1

    .line 407
    if-ne p1, v4, :cond_f

    .line 409
    goto :goto_6

    .line 410
    :cond_f
    move v4, v3

    .line 411
    :goto_6
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    .line 413
    if-eq v4, p1, :cond_35

    .line 415
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    .line 417
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 419
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 422
    goto/16 :goto_12

    .line 424
    :cond_10
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    .line 426
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 429
    move-result v2

    .line 430
    if-eqz v2, :cond_12

    .line 432
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 434
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 439
    move-result-object p1

    .line 440
    const-string/jumbo p2, "enabled_accessibility_audio_description_by_default"

    .line 443
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 445
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 448
    move-result p1

    .line 449
    if-ne p1, v4, :cond_11

    .line 451
    goto :goto_7

    .line 452
    :cond_11
    move v4, v3

    .line 453
    :goto_7
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 455
    if-eq v4, p1, :cond_35

    .line 457
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 459
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 461
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 464
    goto/16 :goto_12

    .line 466
    :cond_12
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

    .line 468
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 471
    move-result v2

    .line 472
    if-nez v2, :cond_34

    .line 474
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    .line 476
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 479
    move-result v2

    .line 480
    if-eqz v2, :cond_13

    .line 482
    goto/16 :goto_11

    .line 484
    :cond_13
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    .line 486
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 489
    move-result v2

    .line 490
    if-eqz v2, :cond_14

    .line 492
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 494
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 497
    move-result p1

    .line 498
    if-eqz p1, :cond_35

    .line 500
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 502
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 505
    goto/16 :goto_12

    .line 507
    :cond_14
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    .line 509
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 512
    move-result v2

    .line 513
    if-eqz v2, :cond_15

    .line 515
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 517
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 520
    move-result p1

    .line 521
    if-eqz p1, :cond_35

    .line 523
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 525
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 528
    goto/16 :goto_12

    .line 530
    :cond_15
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    .line 532
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 535
    move-result v2

    .line 536
    if-eqz v2, :cond_16

    .line 538
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 540
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 543
    move-result p1

    .line 544
    if-eqz p1, :cond_35

    .line 546
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 548
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 551
    goto/16 :goto_12

    .line 553
    :cond_16
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 555
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 558
    move-result v2

    .line 559
    if-nez v2, :cond_33

    .line 561
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 563
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 566
    move-result v2

    .line 567
    if-eqz v2, :cond_17

    .line 569
    goto/16 :goto_10

    .line 571
    :cond_17
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationModeUri:Landroid/net/Uri;

    .line 573
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 576
    move-result v2

    .line 577
    if-eqz v2, :cond_18

    .line 579
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 581
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 584
    move-result p1

    .line 585
    if-eqz p1, :cond_35

    .line 587
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 589
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 592
    move-result p1

    .line 593
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 596
    goto/16 :goto_12

    .line 598
    :cond_18
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationCapabilityUri:Landroid/net/Uri;

    .line 600
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 603
    move-result v2

    .line 604
    if-eqz v2, :cond_19

    .line 606
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 608
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 610
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 613
    move-result-object p2

    .line 614
    const-string v2, "accessibility_magnification_capability"

    .line 616
    iget v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 618
    invoke-static {p2, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 621
    move-result p2

    .line 622
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 624
    if-eq p2, v2, :cond_35

    .line 626
    iput p2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 628
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 630
    iput p2, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 632
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 634
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 637
    goto/16 :goto_12

    .line 639
    :cond_19
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationFollowTypingUri:Landroid/net/Uri;

    .line 641
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 644
    move-result v2

    .line 645
    if-eqz v2, :cond_1a

    .line 647
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 649
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationFollowTypingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 652
    goto/16 :goto_12

    .line 654
    :cond_1a
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAlwaysOnMagnificationUri:Landroid/net/Uri;

    .line 656
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 659
    move-result v2

    .line 660
    if-eqz v2, :cond_1b

    .line 662
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 664
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAlwaysOnMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 667
    goto/16 :goto_12

    .line 669
    :cond_1b
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTapDurationEnabledUri:Landroid/net/Uri;

    .line 671
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 674
    move-result v2

    .line 675
    if-eqz v2, :cond_1d

    .line 677
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 679
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 681
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 684
    move-result-object p1

    .line 685
    const-string/jumbo p2, "tap_duration_enabled"

    .line 688
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 690
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 693
    move-result p1

    .line 694
    if-ne p1, v4, :cond_1c

    .line 696
    goto :goto_8

    .line 697
    :cond_1c
    move v4, v3

    .line 698
    :goto_8
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    .line 700
    if-eq v4, p1, :cond_35

    .line 702
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    .line 704
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 706
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 709
    goto/16 :goto_12

    .line 711
    :cond_1d
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchBlockingEnabledUri:Landroid/net/Uri;

    .line 713
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 716
    move-result v2

    .line 717
    if-eqz v2, :cond_1f

    .line 719
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 721
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 723
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 726
    move-result-object p1

    .line 727
    const-string/jumbo p2, "touch_blocking_enabled"

    .line 730
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 732
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 735
    move-result p1

    .line 736
    if-ne p1, v4, :cond_1e

    .line 738
    goto :goto_9

    .line 739
    :cond_1e
    move v4, v3

    .line 740
    :goto_9
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    .line 742
    if-eq v4, p1, :cond_35

    .line 744
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    .line 746
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 748
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 751
    goto/16 :goto_12

    .line 753
    :cond_1f
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mStickyKeysEnabledUri:Landroid/net/Uri;

    .line 755
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 758
    move-result v2

    .line 759
    if-eqz v2, :cond_21

    .line 761
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 763
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 765
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 768
    move-result-object p1

    .line 769
    const-string p2, "accessibility_sticky_keys"

    .line 771
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 773
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 776
    move-result p1

    .line 777
    if-ne p1, v4, :cond_20

    .line 779
    goto :goto_a

    .line 780
    :cond_20
    move v4, v3

    .line 781
    :goto_a
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    .line 783
    if-eq v4, p1, :cond_35

    .line 785
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    .line 787
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 789
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 792
    goto/16 :goto_12

    .line 794
    :cond_21
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mBounceKeysEnabledUri:Landroid/net/Uri;

    .line 796
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 799
    move-result v2

    .line 800
    if-eqz v2, :cond_23

    .line 802
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 804
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 806
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 809
    move-result-object p1

    .line 810
    const-string p2, "accessibility_bounce_keys"

    .line 812
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 814
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 817
    move-result p1

    .line 818
    if-eqz p1, :cond_22

    .line 820
    goto :goto_b

    .line 821
    :cond_22
    move v4, v3

    .line 822
    :goto_b
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    .line 824
    if-eq v4, p1, :cond_35

    .line 826
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    .line 828
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 830
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 833
    goto/16 :goto_12

    .line 835
    :cond_23
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSlowKeysEnabledUri:Landroid/net/Uri;

    .line 837
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 840
    move-result v2

    .line 841
    if-eqz v2, :cond_25

    .line 843
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 845
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 847
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 850
    move-result-object p1

    .line 851
    const-string p2, "accessibility_slow_keys"

    .line 853
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 855
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 858
    move-result p1

    .line 859
    if-eqz p1, :cond_24

    .line 861
    goto :goto_c

    .line 862
    :cond_24
    move v4, v3

    .line 863
    :goto_c
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    .line 865
    if-eq v4, p1, :cond_35

    .line 867
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    .line 869
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 871
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 874
    goto/16 :goto_12

    .line 876
    :cond_25
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mNaviBarModeUri:Landroid/net/Uri;

    .line 878
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 881
    move-result v2

    .line 882
    if-eqz v2, :cond_26

    .line 884
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 886
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readGestureNaviBarModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 889
    move-result p1

    .line 890
    if-eqz p1, :cond_35

    .line 892
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 894
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 897
    goto/16 :goto_12

    .line 899
    :cond_26
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    .line 901
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 904
    move-result v2

    .line 905
    if-eqz v2, :cond_27

    .line 907
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 909
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityDirectAccessSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 912
    move-result p1

    .line 913
    if-eqz p1, :cond_35

    .line 915
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 917
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 920
    goto/16 :goto_12

    .line 922
    :cond_27
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMEnableUri:Landroid/net/Uri;

    .line 924
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 927
    move-result v2

    .line 928
    if-nez v2, :cond_32

    .line 930
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMMagnificationEnableUri:Landroid/net/Uri;

    .line 932
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 935
    move-result v2

    .line 936
    if-eqz v2, :cond_28

    .line 938
    goto/16 :goto_f

    .line 940
    :cond_28
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mOneHandModeActivateUri:Landroid/net/Uri;

    .line 942
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 945
    move-result v2

    .line 946
    if-eqz v2, :cond_2a

    .line 948
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 950
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 952
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 955
    move-result-object p1

    .line 956
    iget p2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 958
    const-string v2, "any_screen_running"

    .line 960
    invoke-static {p1, v2, v3, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 963
    move-result p1

    .line 964
    if-eqz p1, :cond_29

    .line 966
    goto/16 :goto_12

    .line 968
    :cond_29
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 970
    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 972
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 974
    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 976
    const/16 v2, 0x8

    .line 978
    invoke-direct {p2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 981
    invoke-static {p2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 984
    move-result-object p0

    .line 985
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 988
    goto/16 :goto_12

    .line 990
    :cond_2a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoEnableUri:Landroid/net/Uri;

    .line 992
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 995
    move-result v1

    .line 996
    if-nez v1, :cond_31

    .line 998
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoTypeUri:Landroid/net/Uri;

    .line 1000
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1003
    move-result v1

    .line 1004
    if-nez v1, :cond_31

    .line 1006
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoEdgeThinknessUri:Landroid/net/Uri;

    .line 1008
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1011
    move-result v1

    .line 1012
    if-eqz v1, :cond_2b

    .line 1014
    goto :goto_e

    .line 1015
    :cond_2b
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensEnableUri:Landroid/net/Uri;

    .line 1017
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1020
    move-result v1

    .line 1021
    if-eqz v1, :cond_2d

    .line 1023
    sget-boolean p1, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER_MDNIE_HW:Z

    .line 1025
    if-eqz p1, :cond_2c

    .line 1027
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1029
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 1031
    invoke-static {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mseMdnieHWColorLensState(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1034
    goto :goto_12

    .line 1035
    :cond_2c
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1037
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorLens(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1040
    goto :goto_12

    .line 1041
    :cond_2d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensTypeUri:Landroid/net/Uri;

    .line 1043
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1046
    move-result v1

    .line 1047
    if-nez v1, :cond_2f

    .line 1049
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensOpacityUri:Landroid/net/Uri;

    .line 1051
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1054
    move-result v1

    .line 1055
    if-eqz v1, :cond_2e

    .line 1057
    goto :goto_d

    .line 1058
    :cond_2e
    const-string p0, "AccessibilityManagerService"

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1062
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1071
    move-result-object p1

    .line 1072
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    goto :goto_12

    .line 1076
    :cond_2f
    :goto_d
    sget-boolean p1, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER_MDNIE_HW:Z

    .line 1078
    if-eqz p1, :cond_30

    .line 1080
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1082
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 1084
    invoke-static {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mseMdnieHWColorLensState(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1087
    goto :goto_12

    .line 1088
    :cond_30
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1090
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateColorLensValue()V

    .line 1093
    goto :goto_12

    .line 1094
    :cond_31
    :goto_e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1096
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorRelumino(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1099
    goto :goto_12

    .line 1100
    :cond_32
    :goto_f
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1102
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAMEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 1105
    move-result p1

    .line 1106
    if-eqz p1, :cond_35

    .line 1108
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1110
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 1113
    goto :goto_12

    .line 1114
    :cond_33
    :goto_10
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1116
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 1119
    goto :goto_12

    .line 1120
    :cond_34
    :goto_11
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->reconcileSoftKeyboardModeWithSettingsLocked()V

    .line 1123
    :cond_35
    :goto_12
    monitor-exit v0

    .line 1124
    return-void

    .line 1125
    :goto_13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    throw p0
.end method
