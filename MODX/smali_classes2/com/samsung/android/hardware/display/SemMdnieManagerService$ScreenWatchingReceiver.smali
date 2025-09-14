.class public final Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/SemMdnieManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_b

    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string p2, "BOOT_ON - mDNIe ScreenMode : "

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 22
    .line 23
    iget p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 24
    .line 25
    const-string v1, "SemMdnieManagerService"

    .line 26
    .line 27
    invoke-static {p1, p2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 31
    .line 32
    iget-boolean p2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    iget-object p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->getDisplayService()Z

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 42
    .line 43
    iget-object p2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string/jumbo v2, "screen_mode_setting"

    .line 50
    .line 51
    .line 52
    const/4 v3, -0x2

    .line 53
    const/4 v4, 0x4

    .line 54
    invoke-static {p2, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iput p2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeSetting:I

    .line 59
    .line 60
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 61
    .line 62
    iget p2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenModeSetting:I

    .line 63
    .line 64
    if-eq p2, v4, :cond_2

    .line 65
    .line 66
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_WIDE_COLOR_GAMUT"

    .line 71
    .line 72
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 79
    .line 80
    iput v0, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 84
    .line 85
    const/4 p2, 0x2

    .line 86
    iput p2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iput v4, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 90
    .line 91
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 92
    .line 93
    iget-boolean p2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreenMode:Z

    .line 94
    .line 95
    if-nez p2, :cond_3

    .line 96
    .line 97
    iget-boolean p2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportScreeenReadingMode:Z

    .line 98
    .line 99
    if-eqz p2, :cond_6

    .line 100
    .line 101
    :cond_3
    iget p2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->checkScreenMode(I)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 110
    .line 111
    iget-boolean p2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 112
    .line 113
    if-eqz p2, :cond_4

    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string p2, "AP setScreenMode : "

    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 123
    .line 124
    iget p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 125
    .line 126
    invoke-static {p1, p2, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 130
    .line 131
    iget-object p2, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 132
    .line 133
    iget p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 134
    .line 135
    invoke-virtual {p2, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setScreenMode(I)Z

    .line 136
    .line 137
    .line 138
    new-instance p1, Ljava/io/File;

    .line 139
    .line 140
    const-string p2, "/sys/class/sensors/light_sensor/screen_mode"

    .line 141
    .line 142
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 152
    .line 153
    iget p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 154
    .line 155
    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    iget p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 160
    .line 161
    const-string p2, "/sys/class/mdnie/mdnie/mode"

    .line 162
    .line 163
    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    new-instance p1, Ljava/io/File;

    .line 167
    .line 168
    const-string p2, "/sys/class/mdnie/mdnie1/mode"

    .line 169
    .line 170
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_5

    .line 178
    .line 179
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 180
    .line 181
    iget p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 182
    .line 183
    invoke-static {p1, p2}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string p2, "DDI setScreenMode : "

    .line 189
    .line 190
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 194
    .line 195
    iget p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mScreenMode:I

    .line 196
    .line 197
    invoke-static {p1, p2, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_6
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    const-string p2, "SEC_FLOATING_FEATURE_LCD_CONFIG_VIVIDNESS"

    .line 205
    .line 206
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-lez p1, :cond_a

    .line 211
    .line 212
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 213
    .line 214
    iget-boolean p1, p1, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mSupportAPmDNIe:Z

    .line 215
    .line 216
    if-eqz p1, :cond_7

    .line 217
    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string p2, "AP setVividnessMode : "

    .line 221
    .line 222
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 226
    .line 227
    iget p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 228
    .line 229
    invoke-static {p1, p2, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 233
    .line 234
    iget-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    .line 235
    .line 236
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 237
    .line 238
    invoke-virtual {p1, p0}, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;->setVividnessMode(I)Z

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_7
    const-string p1, "/sys/class/mdnie/mdnie/vividness"

    .line 243
    .line 244
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-eqz p2, :cond_8

    .line 249
    .line 250
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 251
    .line 252
    iget p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 253
    .line 254
    invoke-static {p2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    :cond_8
    const-string p1, "/sys/class/mdnie/mdnie1/vividness"

    .line 258
    .line 259
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-eqz p2, :cond_9

    .line 264
    .line 265
    iget-object p2, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 266
    .line 267
    iget p2, p2, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 268
    .line 269
    invoke-static {p2, p1}, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string p2, "DDI setVividnessMode : "

    .line 275
    .line 276
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 280
    .line 281
    iget p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mVividnessIndex:I

    .line 282
    .line 283
    invoke-static {p1, p0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_a
    :goto_2
    return-void

    .line 287
    :cond_b
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 288
    .line 289
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result p2

    .line 293
    if-eqz p2, :cond_c

    .line 294
    .line 295
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 296
    .line 297
    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 299
    .line 300
    return-void

    .line 301
    :cond_c
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 302
    .line 303
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_d

    .line 308
    .line 309
    iget-object p0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/hardware/display/SemMdnieManagerService;

    .line 310
    .line 311
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/SemMdnieManagerService;->mDisplayOn:Z

    .line 312
    .line 313
    :cond_d
    return-void
.end method
