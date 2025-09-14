.class public final Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final AOD_SHOW_STATE_URI:Landroid/net/Uri;

.field public final EAD_ENABLED_URI:Landroid/net/Uri;

.field public final NIGHT_DIM_URI:Landroid/net/Uri;

.field public final VIVIDNESS_STATE_URI:Landroid/net/Uri;

.field public final resolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 2
    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 18
    .line 19
    const-string p1, "blue_light_filter_night_dim"

    .line 20
    .line 21
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->NIGHT_DIM_URI:Landroid/net/Uri;

    .line 26
    .line 27
    const-string p1, "ead_enabled"

    .line 28
    .line 29
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->EAD_ENABLED_URI:Landroid/net/Uri;

    .line 34
    .line 35
    const-string p1, "aod_show_state"

    .line 36
    .line 37
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->AOD_SHOW_STATE_URI:Landroid/net/Uri;

    .line 42
    .line 43
    const-string/jumbo p1, "vividness_intensity"

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->VIVIDNESS_STATE_URI:Landroid/net/Uri;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->FP_FEATURE_SENSOR_IS_OPTICAL:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v0, "optical"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-string v0, "DDI setVividnessMode : "

    .line 13
    .line 14
    const-string v1, "AP setVividnessMode : "

    .line 15
    .line 16
    const-string v2, "SEC_FLOATING_FEATURE_LCD_CONFIG_VIVIDNESS"

    .line 17
    .line 18
    const-string v3, "VIVIDNESS_STATE_URI onChange"

    .line 19
    .line 20
    const-string v4, "/sys/class/mdnie/mdnie1/vividness"

    .line 21
    .line 22
    const-string v5, "/sys/class/mdnie/mdnie/vividness"

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const-string v7, "SemMdnieManagerService"

    .line 26
    .line 27
    if-nez p1, :cond_b

    .line 28
    .line 29
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 30
    .line 31
    iget-object v8, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 32
    .line 33
    const-string v9, "aod_show_state"

    .line 34
    .line 35
    const/4 v10, -0x2

    .line 36
    invoke-static {v8, v9, v6, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    const/4 v9, 0x1

    .line 41
    if-ne v8, v9, :cond_0

    .line 42
    .line 43
    move v8, v9

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v8, v6

    .line 46
    :goto_0
    iput-boolean v8, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    .line 47
    .line 48
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->AOD_SHOW_STATE_URI:Landroid/net/Uri;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string p2, "AOD_SHOW_STATE_SETTINGS onChange. mAlwaysOnDisplayEnabled : "

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 64
    .line 65
    iget-boolean p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, " , mDisplayOn : "

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 76
    .line 77
    iget-boolean p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p2, " , mDisplayState : "

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 88
    .line 89
    iget p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 90
    .line 91
    invoke-static {p1, p2, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 95
    .line 96
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mAlwaysOnDisplayEnabled:Z

    .line 97
    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 101
    .line 102
    iget p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 103
    .line 104
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightDimOffMode(IZ)Z

    .line 105
    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 110
    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 114
    .line 115
    iget p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    .line 118
    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :cond_2
    iget p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayState:I

    .line 123
    .line 124
    if-ne p1, v9, :cond_3

    .line 125
    .line 126
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 127
    .line 128
    iget p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 129
    .line 130
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightDimOffMode(IZ)Z

    .line 131
    .line 132
    .line 133
    goto/16 :goto_2

    .line 134
    .line 135
    :cond_3
    const/4 p2, 0x2

    .line 136
    if-ne p1, p2, :cond_10

    .line 137
    .line 138
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 139
    .line 140
    iget p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 141
    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    .line 143
    .line 144
    .line 145
    goto/16 :goto_2

    .line 146
    .line 147
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->NIGHT_DIM_URI:Landroid/net/Uri;

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_5

    .line 154
    .line 155
    const-string p1, "BLUE_LIGHT_FILTER_NIGHT_DIM onChange"

    .line 156
    .line 157
    invoke-static {v7, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 161
    .line 162
    iget-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightMode:Z

    .line 163
    .line 164
    iget p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mNightModeIndex:I

    .line 165
    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setNightMode(ZI)Z

    .line 167
    .line 168
    .line 169
    goto/16 :goto_2

    .line 170
    .line 171
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->EAD_ENABLED_URI:Landroid/net/Uri;

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    const-string p1, "EAD_ENABLED_URI onChange"

    .line 180
    .line 181
    invoke-static {v7, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    goto/16 :goto_2

    .line 190
    .line 191
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->VIVIDNESS_STATE_URI:Landroid/net/Uri;

    .line 192
    .line 193
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_a

    .line 198
    .line 199
    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1, v2, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-lez p1, :cond_10

    .line 211
    .line 212
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 218
    .line 219
    iget-boolean p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 220
    .line 221
    if-eqz p1, :cond_7

    .line 222
    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 229
    .line 230
    iget p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 231
    .line 232
    invoke-static {p1, p2, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 236
    .line 237
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 238
    .line 239
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 240
    .line 241
    invoke-virtual {p1, p0}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setVividnessMode(I)Z

    .line 242
    .line 243
    .line 244
    goto/16 :goto_2

    .line 245
    .line 246
    :cond_7
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-eqz p1, :cond_8

    .line 251
    .line 252
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 253
    .line 254
    iget p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 255
    .line 256
    invoke-static {p1, v5}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    :cond_8
    invoke-static {v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-eqz p1, :cond_9

    .line 264
    .line 265
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 266
    .line 267
    iget p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 268
    .line 269
    invoke-static {p1, v4}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 278
    .line 279
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 280
    .line 281
    invoke-static {p1, p0, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->VIVIDNESS_STATE_URI:Landroid/net/Uri;

    .line 292
    .line 293
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-eqz p1, :cond_f

    .line 298
    .line 299
    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p1, v2, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-lez p1, :cond_f

    .line 311
    .line 312
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    .line 315
    .line 316
    .line 317
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 318
    .line 319
    iget-boolean p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 320
    .line 321
    if-eqz p1, :cond_c

    .line 322
    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 329
    .line 330
    iget p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 331
    .line 332
    invoke-static {p1, p2, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 336
    .line 337
    iget-object p2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 338
    .line 339
    iget p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 340
    .line 341
    invoke-virtual {p2, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setVividnessMode(I)Z

    .line 342
    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_c
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-eqz p1, :cond_d

    .line 350
    .line 351
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 352
    .line 353
    iget p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 354
    .line 355
    invoke-static {p1, v5}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    :cond_d
    invoke-static {v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    if-eqz p1, :cond_e

    .line 363
    .line 364
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 365
    .line 366
    iget p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 367
    .line 368
    invoke-static {p1, v4}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 369
    .line 370
    .line 371
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 377
    .line 378
    iget p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 379
    .line 380
    invoke-static {p1, p2, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_f
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$SettingsObserver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 384
    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->setting_is_changed()V

    .line 386
    .line 387
    .line 388
    :cond_10
    :goto_2
    return-void
.end method
