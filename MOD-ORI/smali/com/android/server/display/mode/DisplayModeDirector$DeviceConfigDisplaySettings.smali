.class public final Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 6
    .line 7
    const-string/jumbo v0, "peak_refresh_rate_default"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "display_manager"

    .line 11
    .line 12
    .line 13
    const/high16 v2, -0x40800000    # -1.0f

    .line 14
    .line 15
    invoke-interface {p1, v1, v0, v2}, Landroid/provider/DeviceConfigInterface;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 22
    .line 23
    cmpl-float v1, p1, v2

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    const/4 v1, 0x3

    .line 34
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 44
    .line 45
    const-string/jumbo v0, "peak_refresh_rate_brightness_thresholds"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 59
    .line 60
    const-string/jumbo v1, "peak_refresh_rate_ambient_thresholds"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 76
    .line 77
    const-string/jumbo v2, "refresh_rate_in_zone"

    .line 78
    .line 79
    .line 80
    const-string/jumbo v3, "display_manager"

    .line 81
    .line 82
    .line 83
    const/4 v4, -0x1

    .line 84
    invoke-interface {v1, v3, v2, v4}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 91
    .line 92
    new-instance v3, Landroid/util/Pair;

    .line 93
    .line 94
    invoke-direct {v3, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x2

    .line 98
    invoke-virtual {v2, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 108
    .line 109
    const/4 v0, 0x4

    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 121
    .line 122
    const-string/jumbo v0, "fixed_refresh_rate_high_display_brightness_thresholds"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 136
    .line 137
    const-string/jumbo v1, "fixed_refresh_rate_high_ambient_brightness_thresholds"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 149
    .line 150
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 151
    .line 152
    iget-object v1, v1, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 153
    .line 154
    const-string/jumbo v3, "refresh_rate_in_high_zone"

    .line 155
    .line 156
    .line 157
    const-string/jumbo v5, "display_manager"

    .line 158
    .line 159
    .line 160
    invoke-interface {v1, v5, v3, v4}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 165
    .line 166
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 167
    .line 168
    new-instance v5, Landroid/util/Pair;

    .line 169
    .line 170
    invoke-direct {v5, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const/4 p1, 0x6

    .line 174
    invoke-virtual {v3, p1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 184
    .line 185
    const/4 v0, 0x5

    .line 186
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 196
    .line 197
    monitor-enter p1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 199
    .line 200
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .line 202
    :try_start_1
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 203
    .line 204
    iget-object v0, v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 205
    .line 206
    const-string/jumbo v3, "refresh_rate_in_hbm_sunlight"

    .line 207
    .line 208
    .line 209
    const-string/jumbo v5, "display_manager"

    .line 210
    .line 211
    .line 212
    invoke-interface {v0, v5, v3, v4}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 213
    .line 214
    .line 215
    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    goto :goto_1

    .line 217
    :catch_0
    move v0, v4

    .line 218
    :goto_1
    if-ne v0, v4, :cond_2

    .line 219
    .line 220
    if-nez v1, :cond_1

    .line 221
    .line 222
    :try_start_2
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 225
    .line 226
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const v1, 0x10e007e

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    goto :goto_2

    .line 238
    :cond_1
    iget-object v0, v1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 239
    .line 240
    iget v0, v0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    .line 241
    .line 242
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 243
    .line 244
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 245
    .line 246
    const/4 v3, 0x7

    .line 247
    invoke-virtual {v1, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 255
    .line 256
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    .line 258
    :try_start_3
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 259
    .line 260
    iget-object v0, v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 261
    .line 262
    const-string/jumbo v3, "refresh_rate_in_hbm_hdr"

    .line 263
    .line 264
    .line 265
    const-string/jumbo v5, "display_manager"

    .line 266
    .line 267
    .line 268
    invoke-interface {v0, v5, v3, v4}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 269
    .line 270
    .line 271
    move-result v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    goto :goto_3

    .line 273
    :catch_1
    move v0, v4

    .line 274
    :goto_3
    if-ne v0, v4, :cond_4

    .line 275
    .line 276
    if-nez v1, :cond_3

    .line 277
    .line 278
    :try_start_4
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 279
    .line 280
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 281
    .line 282
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    const v1, 0x10e007d

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    goto :goto_4

    .line 294
    :cond_3
    iget-object v0, v1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 295
    .line 296
    iget v0, v0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    .line 297
    .line 298
    :cond_4
    :goto_4
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 299
    .line 300
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 301
    .line 302
    const/16 v1, 0x8

    .line 303
    .line 304
    invoke-virtual {p0, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 309
    .line 310
    .line 311
    monitor-exit p1

    .line 312
    return-void

    .line 313
    :catchall_0
    move-exception p0

    .line 314
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    throw p0
.end method
