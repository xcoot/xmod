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

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "touch_exploration_enabled"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    .line 14
    .line 15
    const-string p1, "accessibility_display_magnification_enabled"

    .line 16
    .line 17
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationmSingleFingerTripleTapEnabledUri:Landroid/net/Uri;

    .line 22
    .line 23
    const-string p1, "accessibility_magnification_two_finger_triple_tap_enabled"

    .line 24
    .line 25
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    const-string p1, "accessibility_autoclick_enabled"

    .line 29
    .line 30
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoclickEnabledUri:Landroid/net/Uri;

    .line 35
    .line 36
    const-string p1, "accessibility_auto_action_type"

    .line 37
    .line 38
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoActionEnabledUri:Landroid/net/Uri;

    .line 43
    .line 44
    const-string p1, "accessibility_corner_action_enabled"

    .line 45
    .line 46
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mCornerActionEnabledUri:Landroid/net/Uri;

    .line 51
    .line 52
    const-string/jumbo p1, "enabled_accessibility_services"

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 60
    .line 61
    const-string/jumbo p1, "touch_exploration_granted_accessibility_services"

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    .line 69
    .line 70
    const-string/jumbo p1, "high_text_contrast_enabled"

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 78
    .line 79
    const-string/jumbo p2, "enabled_accessibility_audio_description_by_default"

    .line 80
    .line 81
    .line 82
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    .line 87
    .line 88
    const-string p2, "accessibility_soft_keyboard_mode"

    .line 89
    .line 90
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

    .line 95
    .line 96
    const-string/jumbo p2, "show_ime_with_hard_keyboard"

    .line 97
    .line 98
    .line 99
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    .line 104
    .line 105
    const-string/jumbo p2, "lcd_curtain"

    .line 106
    .line 107
    .line 108
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenCurtainEnabledUri:Landroid/net/Uri;

    .line 113
    .line 114
    const-string p2, "accessibility_shortcut_target_service"

    .line 115
    .line 116
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    .line 121
    .line 122
    const-string p2, "accessibility_direct_access_target_service"

    .line 123
    .line 124
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    .line 129
    .line 130
    const-string p2, "accessibility_button_target_component"

    .line 131
    .line 132
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    .line 137
    .line 138
    const-string p2, "accessibility_button_targets"

    .line 139
    .line 140
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    .line 145
    .line 146
    const-string p2, "accessibility_non_interactive_ui_timeout_ms"

    .line 147
    .line 148
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 153
    .line 154
    const-string p2, "accessibility_interactive_ui_timeout_ms"

    .line 155
    .line 156
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 161
    .line 162
    const-string p2, "accessibility_magnification_mode"

    .line 163
    .line 164
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationModeUri:Landroid/net/Uri;

    .line 169
    .line 170
    const-string p2, "accessibility_magnification_capability"

    .line 171
    .line 172
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationCapabilityUri:Landroid/net/Uri;

    .line 177
    .line 178
    const-string p2, "accessibility_magnification_follow_typing_enabled"

    .line 179
    .line 180
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationFollowTypingUri:Landroid/net/Uri;

    .line 185
    .line 186
    const-string p2, "accessibility_magnification_always_on_enabled"

    .line 187
    .line 188
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAlwaysOnMagnificationUri:Landroid/net/Uri;

    .line 193
    .line 194
    const-string/jumbo p2, "tap_duration_enabled"

    .line 195
    .line 196
    .line 197
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTapDurationEnabledUri:Landroid/net/Uri;

    .line 202
    .line 203
    const-string/jumbo p2, "touch_blocking_enabled"

    .line 204
    .line 205
    .line 206
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchBlockingEnabledUri:Landroid/net/Uri;

    .line 211
    .line 212
    const-string p2, "amplify_ambient_sound"

    .line 213
    .line 214
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAmplifyAmbientSountEnableUri:Landroid/net/Uri;

    .line 219
    .line 220
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighContrastTextEnableUri:Landroid/net/Uri;

    .line 225
    .line 226
    const-string/jumbo p1, "color_lens_switch"

    .line 227
    .line 228
    .line 229
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensEnableUri:Landroid/net/Uri;

    .line 234
    .line 235
    const-string/jumbo p1, "color_lens_type"

    .line 236
    .line 237
    .line 238
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensTypeUri:Landroid/net/Uri;

    .line 243
    .line 244
    const-string/jumbo p1, "color_lens_opacity"

    .line 245
    .line 246
    .line 247
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensOpacityUri:Landroid/net/Uri;

    .line 252
    .line 253
    const-string/jumbo p1, "relumino_switch"

    .line 254
    .line 255
    .line 256
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoEnableUri:Landroid/net/Uri;

    .line 261
    .line 262
    const-string/jumbo p1, "relumino_type"

    .line 263
    .line 264
    .line 265
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoTypeUri:Landroid/net/Uri;

    .line 270
    .line 271
    const-string/jumbo p1, "relumino_edge_thickness"

    .line 272
    .line 273
    .line 274
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoEdgeThinknessUri:Landroid/net/Uri;

    .line 279
    .line 280
    const-string/jumbo p1, "sticky_keys_enabled"

    .line 281
    .line 282
    .line 283
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mStickyKeysEnabledUri:Landroid/net/Uri;

    .line 288
    .line 289
    const-string/jumbo p1, "bounce_keys_enabled"

    .line 290
    .line 291
    .line 292
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mBounceKeysEnabledUri:Landroid/net/Uri;

    .line 297
    .line 298
    const-string/jumbo p1, "slow_keys_enabled"

    .line 299
    .line 300
    .line 301
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSlowKeysEnabledUri:Landroid/net/Uri;

    .line 306
    .line 307
    const-string p1, "accessibility_sticky_keys"

    .line 308
    .line 309
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mStickyKeysUri:Landroid/net/Uri;

    .line 314
    .line 315
    const-string p1, "accessibility_bounce_keys"

    .line 316
    .line 317
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mBounceKeysThresholdUri:Landroid/net/Uri;

    .line 322
    .line 323
    const-string p1, "accessibility_slow_keys"

    .line 324
    .line 325
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSlowKeysThresholdUri:Landroid/net/Uri;

    .line 330
    .line 331
    const-string/jumbo p1, "navigation_mode"

    .line 332
    .line 333
    .line 334
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mNaviBarModeUri:Landroid/net/Uri;

    .line 339
    .line 340
    const-string p1, "assistant_menu"

    .line 341
    .line 342
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMEnableUri:Landroid/net/Uri;

    .line 347
    .line 348
    const-string p1, "any_screen_running"

    .line 349
    .line 350
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mOneHandModeActivateUri:Landroid/net/Uri;

    .line 355
    .line 356
    const-string p1, "assistant_menu_option_upperapps"

    .line 357
    .line 358
    invoke-static {p1}, Landroid/view/accessibility/A11yRune;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMMagnificationEnableUri:Landroid/net/Uri;

    .line 363
    .line 364
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 6

    .line 1
    const-string/jumbo p1, "onChange():handle nothing - "

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 10
    .line 11
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    .line 18
    .line 19
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string/jumbo p2, "touch_exploration_enabled"

    .line 36
    .line 37
    .line 38
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 39
    .line 40
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, v4, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v4, v3

    .line 48
    :goto_0
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 49
    .line 50
    if-eq v4, p1, :cond_35

    .line 51
    .line 52
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 55
    .line 56
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_12

    .line 60
    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto/16 :goto_13

    .line 63
    .line 64
    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationmSingleFingerTripleTapEnabledUri:Landroid/net/Uri;

    .line 65
    .line 66
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "accessibility_display_magnification_enabled"

    .line 81
    .line 82
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 83
    .line 84
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-ne p1, v4, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move v4, v3

    .line 92
    :goto_1
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 93
    .line 94
    if-eq v4, p1, :cond_35

    .line 95
    .line 96
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 99
    .line 100
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_12

    .line 104
    .line 105
    :cond_3
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationMultipleFingerMultipleTapGesture()Z

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoclickEnabledUri:Landroid/net/Uri;

    .line 109
    .line 110
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_5

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string p2, "accessibility_autoclick_enabled"

    .line 125
    .line 126
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 127
    .line 128
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-ne p1, v4, :cond_4

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    move v4, v3

    .line 136
    :goto_2
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 137
    .line 138
    if-eq v4, p1, :cond_35

    .line 139
    .line 140
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 143
    .line 144
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_12

    .line 148
    .line 149
    :cond_5
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoActionEnabledUri:Landroid/net/Uri;

    .line 150
    .line 151
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_7

    .line 156
    .line 157
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 158
    .line 159
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string p2, "accessibility_auto_action_type"

    .line 166
    .line 167
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 168
    .line 169
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_6

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_6
    move v4, v3

    .line 177
    :goto_3
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    .line 178
    .line 179
    if-eq v4, p1, :cond_35

    .line 180
    .line 181
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 184
    .line 185
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_12

    .line 189
    .line 190
    :cond_7
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mCornerActionEnabledUri:Landroid/net/Uri;

    .line 191
    .line 192
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_9

    .line 197
    .line 198
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 199
    .line 200
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    const-string p2, "accessibility_corner_action_enabled"

    .line 207
    .line 208
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 209
    .line 210
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_8

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_8
    move v4, v3

    .line 218
    :goto_4
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    .line 219
    .line 220
    if-eq v4, p1, :cond_35

    .line 221
    .line 222
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    .line 223
    .line 224
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 225
    .line 226
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_12

    .line 230
    .line 231
    :cond_9
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 232
    .line 233
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_b

    .line 238
    .line 239
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 240
    .line 241
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_35

    .line 246
    .line 247
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 248
    .line 249
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 250
    .line 251
    iget p2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 252
    .line 253
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 254
    .line 255
    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 256
    .line 257
    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 258
    .line 259
    iget v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 260
    .line 261
    if-eq v4, p2, :cond_a

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_a
    new-instance v4, Landroid/util/ArraySet;

    .line 265
    .line 266
    invoke-direct {v4, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    new-instance v2, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;

    .line 275
    .line 276
    const/4 v5, 0x2

    .line 277
    invoke-direct {v2, v5, p1}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    invoke-static {v2, p2, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    iget-object p1, p1, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    .line 289
    .line 290
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    .line 292
    .line 293
    :goto_5
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->removeDisabledServicesFromTemporaryStatesLocked()V

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 297
    .line 298
    invoke-virtual {p1, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 299
    .line 300
    .line 301
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 302
    .line 303
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenReaderEnabled()Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-nez p1, :cond_35

    .line 308
    .line 309
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 310
    .line 311
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 312
    .line 313
    if-eqz p1, :cond_35

    .line 314
    .line 315
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semToggleDarkScreenMode()V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_12

    .line 319
    .line 320
    :cond_b
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    .line 321
    .line 322
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_c

    .line 327
    .line 328
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 329
    .line 330
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    if-eqz p1, :cond_35

    .line 335
    .line 336
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 337
    .line 338
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_12

    .line 342
    .line 343
    :cond_c
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenCurtainEnabledUri:Landroid/net/Uri;

    .line 344
    .line 345
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_e

    .line 350
    .line 351
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 352
    .line 353
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 354
    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    const-string/jumbo p2, "lcd_curtain"

    .line 360
    .line 361
    .line 362
    const/4 v1, -0x2

    .line 363
    invoke-static {p1, p2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    if-ne p1, v4, :cond_d

    .line 368
    .line 369
    goto/16 :goto_12

    .line 370
    .line 371
    :cond_d
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 372
    .line 373
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 374
    .line 375
    if-eqz p1, :cond_35

    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semToggleDarkScreenMode()V

    .line 378
    .line 379
    .line 380
    goto/16 :goto_12

    .line 381
    .line 382
    :cond_e
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 383
    .line 384
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_10

    .line 389
    .line 390
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 391
    .line 392
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 393
    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    const-string/jumbo p2, "high_text_contrast_enabled"

    .line 399
    .line 400
    .line 401
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 402
    .line 403
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-ne p1, v4, :cond_f

    .line 408
    .line 409
    goto :goto_6

    .line 410
    :cond_f
    move v4, v3

    .line 411
    :goto_6
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    .line 412
    .line 413
    if-eq v4, p1, :cond_35

    .line 414
    .line 415
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTextHighContrastEnabled:Z

    .line 416
    .line 417
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 418
    .line 419
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_12

    .line 423
    .line 424
    :cond_10
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    .line 425
    .line 426
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    if-eqz v2, :cond_12

    .line 431
    .line 432
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 433
    .line 434
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 435
    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    const-string/jumbo p2, "enabled_accessibility_audio_description_by_default"

    .line 441
    .line 442
    .line 443
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 444
    .line 445
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 446
    .line 447
    .line 448
    move-result p1

    .line 449
    if-ne p1, v4, :cond_11

    .line 450
    .line 451
    goto :goto_7

    .line 452
    :cond_11
    move v4, v3

    .line 453
    :goto_7
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 454
    .line 455
    if-eq v4, p1, :cond_35

    .line 456
    .line 457
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 458
    .line 459
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 460
    .line 461
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_12

    .line 465
    .line 466
    :cond_12
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

    .line 467
    .line 468
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-nez v2, :cond_34

    .line 473
    .line 474
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    .line 475
    .line 476
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-eqz v2, :cond_13

    .line 481
    .line 482
    goto/16 :goto_11

    .line 483
    .line 484
    :cond_13
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    .line 485
    .line 486
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    if-eqz v2, :cond_14

    .line 491
    .line 492
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 493
    .line 494
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 495
    .line 496
    .line 497
    move-result p1

    .line 498
    if-eqz p1, :cond_35

    .line 499
    .line 500
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 501
    .line 502
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_12

    .line 506
    .line 507
    :cond_14
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    .line 508
    .line 509
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    if-eqz v2, :cond_15

    .line 514
    .line 515
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 516
    .line 517
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 518
    .line 519
    .line 520
    move-result p1

    .line 521
    if-eqz p1, :cond_35

    .line 522
    .line 523
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 524
    .line 525
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_12

    .line 529
    .line 530
    :cond_15
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    .line 531
    .line 532
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-eqz v2, :cond_16

    .line 537
    .line 538
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 539
    .line 540
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    if-eqz p1, :cond_35

    .line 545
    .line 546
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 547
    .line 548
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 549
    .line 550
    .line 551
    goto/16 :goto_12

    .line 552
    .line 553
    :cond_16
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 554
    .line 555
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-nez v2, :cond_33

    .line 560
    .line 561
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 562
    .line 563
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    if-eqz v2, :cond_17

    .line 568
    .line 569
    goto/16 :goto_10

    .line 570
    .line 571
    :cond_17
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationModeUri:Landroid/net/Uri;

    .line 572
    .line 573
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    move-result v2

    .line 577
    if-eqz v2, :cond_18

    .line 578
    .line 579
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 580
    .line 581
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 582
    .line 583
    .line 584
    move-result p1

    .line 585
    if-eqz p1, :cond_35

    .line 586
    .line 587
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 588
    .line 589
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getDisplayId()I

    .line 590
    .line 591
    .line 592
    move-result p1

    .line 593
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;I)V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_12

    .line 597
    .line 598
    :cond_18
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationCapabilityUri:Landroid/net/Uri;

    .line 599
    .line 600
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    if-eqz v2, :cond_19

    .line 605
    .line 606
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 607
    .line 608
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 609
    .line 610
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 611
    .line 612
    .line 613
    move-result-object p2

    .line 614
    const-string v2, "accessibility_magnification_capability"

    .line 615
    .line 616
    iget v3, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 617
    .line 618
    invoke-static {p2, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 619
    .line 620
    .line 621
    move-result p2

    .line 622
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 623
    .line 624
    if-eq p2, v2, :cond_35

    .line 625
    .line 626
    iput p2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 627
    .line 628
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/magnification/MagnificationController;

    .line 629
    .line 630
    iput p2, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    .line 631
    .line 632
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 633
    .line 634
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 635
    .line 636
    .line 637
    goto/16 :goto_12

    .line 638
    .line 639
    :cond_19
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationFollowTypingUri:Landroid/net/Uri;

    .line 640
    .line 641
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    if-eqz v2, :cond_1a

    .line 646
    .line 647
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 648
    .line 649
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationFollowTypingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 650
    .line 651
    .line 652
    goto/16 :goto_12

    .line 653
    .line 654
    :cond_1a
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAlwaysOnMagnificationUri:Landroid/net/Uri;

    .line 655
    .line 656
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    if-eqz v2, :cond_1b

    .line 661
    .line 662
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 663
    .line 664
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAlwaysOnMagnificationLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 665
    .line 666
    .line 667
    goto/16 :goto_12

    .line 668
    .line 669
    :cond_1b
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTapDurationEnabledUri:Landroid/net/Uri;

    .line 670
    .line 671
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v2

    .line 675
    if-eqz v2, :cond_1d

    .line 676
    .line 677
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 678
    .line 679
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 680
    .line 681
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 682
    .line 683
    .line 684
    move-result-object p1

    .line 685
    const-string/jumbo p2, "tap_duration_enabled"

    .line 686
    .line 687
    .line 688
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 689
    .line 690
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 691
    .line 692
    .line 693
    move-result p1

    .line 694
    if-ne p1, v4, :cond_1c

    .line 695
    .line 696
    goto :goto_8

    .line 697
    :cond_1c
    move v4, v3

    .line 698
    :goto_8
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    .line 699
    .line 700
    if-eq v4, p1, :cond_35

    .line 701
    .line 702
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    .line 703
    .line 704
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 705
    .line 706
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 707
    .line 708
    .line 709
    goto/16 :goto_12

    .line 710
    .line 711
    :cond_1d
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchBlockingEnabledUri:Landroid/net/Uri;

    .line 712
    .line 713
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    move-result v2

    .line 717
    if-eqz v2, :cond_1f

    .line 718
    .line 719
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 720
    .line 721
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 722
    .line 723
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 724
    .line 725
    .line 726
    move-result-object p1

    .line 727
    const-string/jumbo p2, "touch_blocking_enabled"

    .line 728
    .line 729
    .line 730
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 731
    .line 732
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 733
    .line 734
    .line 735
    move-result p1

    .line 736
    if-ne p1, v4, :cond_1e

    .line 737
    .line 738
    goto :goto_9

    .line 739
    :cond_1e
    move v4, v3

    .line 740
    :goto_9
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    .line 741
    .line 742
    if-eq v4, p1, :cond_35

    .line 743
    .line 744
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    .line 745
    .line 746
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 747
    .line 748
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 749
    .line 750
    .line 751
    goto/16 :goto_12

    .line 752
    .line 753
    :cond_1f
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mStickyKeysEnabledUri:Landroid/net/Uri;

    .line 754
    .line 755
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    if-eqz v2, :cond_21

    .line 760
    .line 761
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 762
    .line 763
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 764
    .line 765
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 766
    .line 767
    .line 768
    move-result-object p1

    .line 769
    const-string p2, "accessibility_sticky_keys"

    .line 770
    .line 771
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 772
    .line 773
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 774
    .line 775
    .line 776
    move-result p1

    .line 777
    if-ne p1, v4, :cond_20

    .line 778
    .line 779
    goto :goto_a

    .line 780
    :cond_20
    move v4, v3

    .line 781
    :goto_a
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    .line 782
    .line 783
    if-eq v4, p1, :cond_35

    .line 784
    .line 785
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    .line 786
    .line 787
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 788
    .line 789
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 790
    .line 791
    .line 792
    goto/16 :goto_12

    .line 793
    .line 794
    :cond_21
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mBounceKeysEnabledUri:Landroid/net/Uri;

    .line 795
    .line 796
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    if-eqz v2, :cond_23

    .line 801
    .line 802
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 803
    .line 804
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 805
    .line 806
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 807
    .line 808
    .line 809
    move-result-object p1

    .line 810
    const-string p2, "accessibility_bounce_keys"

    .line 811
    .line 812
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 813
    .line 814
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 815
    .line 816
    .line 817
    move-result p1

    .line 818
    if-eqz p1, :cond_22

    .line 819
    .line 820
    goto :goto_b

    .line 821
    :cond_22
    move v4, v3

    .line 822
    :goto_b
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    .line 823
    .line 824
    if-eq v4, p1, :cond_35

    .line 825
    .line 826
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    .line 827
    .line 828
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 829
    .line 830
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 831
    .line 832
    .line 833
    goto/16 :goto_12

    .line 834
    .line 835
    :cond_23
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSlowKeysEnabledUri:Landroid/net/Uri;

    .line 836
    .line 837
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v2

    .line 841
    if-eqz v2, :cond_25

    .line 842
    .line 843
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 844
    .line 845
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 846
    .line 847
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 848
    .line 849
    .line 850
    move-result-object p1

    .line 851
    const-string p2, "accessibility_slow_keys"

    .line 852
    .line 853
    iget v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 854
    .line 855
    invoke-static {p1, p2, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 856
    .line 857
    .line 858
    move-result p1

    .line 859
    if-eqz p1, :cond_24

    .line 860
    .line 861
    goto :goto_c

    .line 862
    :cond_24
    move v4, v3

    .line 863
    :goto_c
    iget-boolean p1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    .line 864
    .line 865
    if-eq v4, p1, :cond_35

    .line 866
    .line 867
    iput-boolean v4, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    .line 868
    .line 869
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 870
    .line 871
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 872
    .line 873
    .line 874
    goto/16 :goto_12

    .line 875
    .line 876
    :cond_25
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mNaviBarModeUri:Landroid/net/Uri;

    .line 877
    .line 878
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-result v2

    .line 882
    if-eqz v2, :cond_26

    .line 883
    .line 884
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 885
    .line 886
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readGestureNaviBarModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 887
    .line 888
    .line 889
    move-result p1

    .line 890
    if-eqz p1, :cond_35

    .line 891
    .line 892
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 893
    .line 894
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 895
    .line 896
    .line 897
    goto/16 :goto_12

    .line 898
    .line 899
    :cond_26
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    .line 900
    .line 901
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    move-result v2

    .line 905
    if-eqz v2, :cond_27

    .line 906
    .line 907
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 908
    .line 909
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityDirectAccessSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 910
    .line 911
    .line 912
    move-result p1

    .line 913
    if-eqz p1, :cond_35

    .line 914
    .line 915
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 916
    .line 917
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 918
    .line 919
    .line 920
    goto/16 :goto_12

    .line 921
    .line 922
    :cond_27
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMEnableUri:Landroid/net/Uri;

    .line 923
    .line 924
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    move-result v2

    .line 928
    if-nez v2, :cond_32

    .line 929
    .line 930
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMMagnificationEnableUri:Landroid/net/Uri;

    .line 931
    .line 932
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 933
    .line 934
    .line 935
    move-result v2

    .line 936
    if-eqz v2, :cond_28

    .line 937
    .line 938
    goto/16 :goto_f

    .line 939
    .line 940
    :cond_28
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mOneHandModeActivateUri:Landroid/net/Uri;

    .line 941
    .line 942
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    move-result v2

    .line 946
    if-eqz v2, :cond_2a

    .line 947
    .line 948
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 949
    .line 950
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 951
    .line 952
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 953
    .line 954
    .line 955
    move-result-object p1

    .line 956
    iget p2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 957
    .line 958
    const-string v2, "any_screen_running"

    .line 959
    .line 960
    invoke-static {p1, v2, v3, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 961
    .line 962
    .line 963
    move-result p1

    .line 964
    if-eqz p1, :cond_29

    .line 965
    .line 966
    goto/16 :goto_12

    .line 967
    .line 968
    :cond_29
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 969
    .line 970
    iput-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 971
    .line 972
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 973
    .line 974
    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;

    .line 975
    .line 976
    const/16 v2, 0x8

    .line 977
    .line 978
    invoke-direct {p2, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;-><init>(I)V

    .line 979
    .line 980
    .line 981
    invoke-static {p2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 982
    .line 983
    .line 984
    move-result-object p0

    .line 985
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 986
    .line 987
    .line 988
    goto/16 :goto_12

    .line 989
    .line 990
    :cond_2a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoEnableUri:Landroid/net/Uri;

    .line 991
    .line 992
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 993
    .line 994
    .line 995
    move-result v1

    .line 996
    if-nez v1, :cond_31

    .line 997
    .line 998
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoTypeUri:Landroid/net/Uri;

    .line 999
    .line 1000
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v1

    .line 1004
    if-nez v1, :cond_31

    .line 1005
    .line 1006
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorReluminoEdgeThinknessUri:Landroid/net/Uri;

    .line 1007
    .line 1008
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v1

    .line 1012
    if-eqz v1, :cond_2b

    .line 1013
    .line 1014
    goto :goto_e

    .line 1015
    :cond_2b
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensEnableUri:Landroid/net/Uri;

    .line 1016
    .line 1017
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v1

    .line 1021
    if-eqz v1, :cond_2d

    .line 1022
    .line 1023
    sget-boolean p1, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER_MDNIE_HW:Z

    .line 1024
    .line 1025
    if-eqz p1, :cond_2c

    .line 1026
    .line 1027
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1028
    .line 1029
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 1030
    .line 1031
    invoke-static {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mseMdnieHWColorLensState(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1032
    .line 1033
    .line 1034
    goto :goto_12

    .line 1035
    :cond_2c
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1036
    .line 1037
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorLens(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1038
    .line 1039
    .line 1040
    goto :goto_12

    .line 1041
    :cond_2d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensTypeUri:Landroid/net/Uri;

    .line 1042
    .line 1043
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v1

    .line 1047
    if-nez v1, :cond_2f

    .line 1048
    .line 1049
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensOpacityUri:Landroid/net/Uri;

    .line 1050
    .line 1051
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v1

    .line 1055
    if-eqz v1, :cond_2e

    .line 1056
    .line 1057
    goto :goto_d

    .line 1058
    :cond_2e
    const-string p0, "AccessibilityManagerService"

    .line 1059
    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object p1

    .line 1072
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    .line 1074
    .line 1075
    goto :goto_12

    .line 1076
    :cond_2f
    :goto_d
    sget-boolean p1, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER_MDNIE_HW:Z

    .line 1077
    .line 1078
    if-eqz p1, :cond_30

    .line 1079
    .line 1080
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1081
    .line 1082
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 1083
    .line 1084
    invoke-static {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mseMdnieHWColorLensState(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1085
    .line 1086
    .line 1087
    goto :goto_12

    .line 1088
    :cond_30
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1089
    .line 1090
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateColorLensValue()V

    .line 1091
    .line 1092
    .line 1093
    goto :goto_12

    .line 1094
    :cond_31
    :goto_e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1095
    .line 1096
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorRelumino(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1097
    .line 1098
    .line 1099
    goto :goto_12

    .line 1100
    :cond_32
    :goto_f
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1101
    .line 1102
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAMEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 1103
    .line 1104
    .line 1105
    move-result p1

    .line 1106
    if-eqz p1, :cond_35

    .line 1107
    .line 1108
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1109
    .line 1110
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 1111
    .line 1112
    .line 1113
    goto :goto_12

    .line 1114
    :cond_33
    :goto_10
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1115
    .line 1116
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 1117
    .line 1118
    .line 1119
    goto :goto_12

    .line 1120
    :cond_34
    :goto_11
    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityUserState;->reconcileSoftKeyboardModeWithSettingsLocked()V

    .line 1121
    .line 1122
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
