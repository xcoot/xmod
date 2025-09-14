.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

.field public final BLUE_LIGHT_FILTER_ANTI_GLARE_URI:Landroid/net/Uri;

.field public final BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

.field public final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field public final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public final BRIGHTNESS_URI:Landroid/net/Uri;

.field public final REDUCE_BRIGHT_COLORS_ACTIVATED_URI:Landroid/net/Uri;

.field public final REDUCE_BRIGHT_COLORS_LEVEL_URI:Landroid/net/Uri;

.field public final SCREEN_MODE_SETTING_URI:Landroid/net/Uri;

.field public final VIVIDNESS_INTENSITY_URI:Landroid/net/Uri;

.field public final resolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 13
    .line 14
    const-string/jumbo p1, "screen_brightness"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 22
    .line 23
    const-string/jumbo p1, "screen_brightness_mode"

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 31
    .line 32
    const-string/jumbo p1, "screen_auto_brightness_adj"

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 40
    .line 41
    const-string p1, "blue_light_filter"

    .line 42
    .line 43
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    .line 48
    .line 49
    const-string p1, "blue_light_filter_adaptive_mode"

    .line 50
    .line 51
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    .line 56
    .line 57
    const-string p1, "blue_light_filter_anti_glare"

    .line 58
    .line 59
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BLUE_LIGHT_FILTER_ANTI_GLARE_URI:Landroid/net/Uri;

    .line 64
    .line 65
    const-string/jumbo p1, "reduce_bright_colors_activated"

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->REDUCE_BRIGHT_COLORS_ACTIVATED_URI:Landroid/net/Uri;

    .line 73
    .line 74
    const-string/jumbo p1, "reduce_bright_colors_level"

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->REDUCE_BRIGHT_COLORS_LEVEL_URI:Landroid/net/Uri;

    .line 82
    .line 83
    const-string/jumbo p1, "screen_mode_setting"

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->SCREEN_MODE_SETTING_URI:Landroid/net/Uri;

    .line 91
    .line 92
    const-string/jumbo p1, "vividness_intensity"

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->VIVIDNESS_INTENSITY_URI:Landroid/net/Uri;

    .line 100
    .line 101
    const-string/jumbo p0, "sec_display_preset_index"

    .line 102
    .line 103
    .line 104
    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 7
    .line 8
    iget p1, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne p1, v0, :cond_4

    .line 14
    .line 15
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, -0x2

    .line 22
    const-string/jumbo v3, "screen_brightness_mode"

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 28
    .line 29
    invoke-static {p1, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    iput v4, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPrevAclValue:I

    .line 39
    .line 40
    iput-boolean v2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAntiGlareEnable:Z

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 51
    .line 52
    invoke-static {p1, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-ne p1, v1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 59
    .line 60
    iget-boolean v4, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 61
    .line 62
    if-nez v4, :cond_1

    .line 63
    .line 64
    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$manti_glare_state(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetAclModeSettings(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BLUE_LIGHT_FILTER_URI:Landroid/net/Uri;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BLUE_LIGHT_FILTER_ADAPTIVE_MODE_URI:Landroid/net/Uri;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BLUE_LIGHT_FILTER_ANTI_GLARE_URI:Landroid/net/Uri;

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 97
    .line 98
    invoke-static {p1, v3, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-ne p1, v1, :cond_3

    .line 103
    .line 104
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 105
    .line 106
    iget-boolean v0, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    .line 107
    .line 108
    if-nez v0, :cond_3

    .line 109
    .line 110
    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$manti_glare_state(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetAclModeSettings(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 120
    .line 121
    iput-boolean v2, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAntiGlareEnable:Z

    .line 122
    .line 123
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 132
    .line 133
    iget-boolean v0, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    .line 134
    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    iget-object p1, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 138
    .line 139
    const/16 v0, 0x13

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 145
    .line 146
    iget-object p1, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 149
    .line 150
    .line 151
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->REDUCE_BRIGHT_COLORS_ACTIVATED_URI:Landroid/net/Uri;

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_6

    .line 158
    .line 159
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->REDUCE_BRIGHT_COLORS_LEVEL_URI:Landroid/net/Uri;

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_8

    .line 166
    .line 167
    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-string v0, "SEC_FLOATING_FEATURE_LCD_CONFIG_VIVIDPLUS"

    .line 172
    .line 173
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-ne p1, v1, :cond_8

    .line 178
    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string/jumbo v0, "mReduceBrightColorsActivatedEnabled("

    .line 182
    .line 183
    .line 184
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 188
    .line 189
    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsActivatedEnabled:Z

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v0, ") - level : "

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 200
    .line 201
    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsLevel:I

    .line 202
    .line 203
    const-string v1, "MdnieScenarioControlService"

    .line 204
    .line 205
    invoke-static {p1, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 209
    .line 210
    iget-boolean v0, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsActivatedEnabled:Z

    .line 211
    .line 212
    if-eqz v0, :cond_7

    .line 213
    .line 214
    iget-object v0, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 215
    .line 216
    if-eqz v0, :cond_8

    .line 217
    .line 218
    iget p1, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mReduceBrightColorsLevel:I

    .line 219
    .line 220
    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setExtraDimMode(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_7
    if-nez v0, :cond_8

    .line 225
    .line 226
    iget-object p1, p1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 227
    .line 228
    if-eqz p1, :cond_8

    .line 229
    .line 230
    invoke-virtual {p1, v2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setExtraDimMode(I)V

    .line 231
    .line 232
    .line 233
    :cond_8
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const-string v0, "SEC_FLOATING_FEATURE_LCD_SUPPORT_WIDE_COLOR_GAMUT"

    .line 238
    .line 239
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_a

    .line 244
    .line 245
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->VIVIDNESS_INTENSITY_URI:Landroid/net/Uri;

    .line 246
    .line 247
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-nez p1, :cond_9

    .line 252
    .line 253
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->SCREEN_MODE_SETTING_URI:Landroid/net/Uri;

    .line 254
    .line 255
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_a

    .line 260
    .line 261
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .line 262
    .line 263
    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mset_wcg_property(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 264
    .line 265
    .line 266
    :cond_a
    return-void
.end method
