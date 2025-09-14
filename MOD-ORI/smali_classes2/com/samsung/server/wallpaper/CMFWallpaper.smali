.class public final Lcom/samsung/server/wallpaper/CMFWallpaper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sCmfSwitchMap:Ljava/util/HashMap;


# instance fields
.field public final mAlternativeCode:Ljava/lang/String;

.field public mColorCodePollingThread:Ljava/lang/Thread;

.field public final mContext:Landroid/content/Context;

.field public mDeviceColor:Ljava/lang/String;

.field public final mHandler:Lcom/samsung/server/wallpaper/CMFWallpaper$1;

.field public mLastColorCodePollingThreadCount:I

.field public mLegacyDeviceColor:Ljava/lang/String;

.field public mProductCode:Ljava/lang/String;

.field public final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

.field public final mSettingsObserver:Lcom/samsung/server/wallpaper/CMFWallpaper$2;

.field public final mWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "zk"

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "black"

    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    .line 12
    .line 13
    const/16 v0, 0x3c

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    .line 16
    .line 17
    new-instance v0, Lcom/samsung/server/wallpaper/CMFWallpaper$1;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/CMFWallpaper$1;-><init>(Lcom/samsung/server/wallpaper/CMFWallpaper;Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mHandler:Lcom/samsung/server/wallpaper/CMFWallpaper$1;

    .line 27
    .line 28
    new-instance v1, Lcom/samsung/server/wallpaper/CMFWallpaper$2;

    .line 29
    .line 30
    invoke-direct {v1, p0, v0}, Lcom/samsung/server/wallpaper/CMFWallpaper$2;-><init>(Lcom/samsung/server/wallpaper/CMFWallpaper;Lcom/samsung/server/wallpaper/CMFWallpaper$1;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mSettingsObserver:Lcom/samsung/server/wallpaper/CMFWallpaper$2;

    .line 34
    .line 35
    const-string v0, "CMFWallpaper"

    .line 36
    .line 37
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 45
    .line 46
    new-instance p1, Ljava/io/File;

    .line 47
    .line 48
    const-string p2, "/efs/imei/alt_cmf.dat"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    const/4 p3, 0x0

    .line 55
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    if-eqz p3, :cond_0

    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v1, "readAlternativeColorCodeFromEfs : "

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object p3, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mAlternativeCode:Ljava/lang/String;

    .line 84
    .line 85
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 86
    .line 87
    const-string p3, "eng"

    .line 88
    .line 89
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-nez p3, :cond_1

    .line 94
    .line 95
    const-string/jumbo p3, "userdebug"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    :cond_1
    iget-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string p3, "cmf_color_code"

    .line 111
    .line 112
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mSettingsObserver:Lcom/samsung/server/wallpaper/CMFWallpaper$2;

    .line 117
    .line 118
    invoke-virtual {p1, p3, p2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void
.end method

.method public static getPreciseMillisTimeString(J)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0xf4240

    .line 6
    .line 7
    .line 8
    rem-long/2addr v0, v2

    .line 9
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v4, ""

    .line 16
    .line 17
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    div-long/2addr p0, v2

    .line 21
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, "."

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const-string p1, "000000"

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string/jumbo p0, "ms"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method


# virtual methods
.method public final getDeviceColor()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "deviceColor:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "CMFWallpaper"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 23
    .line 24
    return-object p0
.end method

.method public final getProperColorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo;->isKnownColorCode(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 11
    .line 12
    invoke-virtual {p0, p2}, Landroid/app/SemWallpaperResourcesInfo;->isKnownColorCode(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p1, "getProperColorCode : use alt color. "

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "CMFWallpaper"

    .line 33
    .line 34
    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p2

    .line 38
    :cond_1
    return-object p1
.end method

.method public final setLegacyDeviceColor(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "setLegacyDeviceColor cmfColorCode = "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", featureBasedColor = "

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "CMFWallpaper"

    .line 29
    .line 30
    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz v0, :cond_15

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_0
    const/4 p1, -0x1

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    sparse-switch v1, :sswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :sswitch_0
    const-string/jumbo v1, "zy"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_1
    const/16 p1, 0x13

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :sswitch_1
    const-string/jumbo v1, "zw"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_2
    const/16 p1, 0x12

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :sswitch_2
    const-string/jumbo v1, "zv"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_3
    const/16 p1, 0x11

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :sswitch_3
    const-string/jumbo v1, "zs"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_4
    const/16 p1, 0x10

    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :sswitch_4
    const-string/jumbo v1, "zr"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_5

    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :cond_5
    const/16 p1, 0xf

    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :sswitch_5
    const-string/jumbo v1, "zp"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_6

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_6
    const/16 p1, 0xe

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :sswitch_6
    const-string/jumbo v1, "zn"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_7

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_7
    const/16 p1, 0xd

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :sswitch_7
    const-string/jumbo v1, "zi"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v0, :cond_8

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_8
    const/16 p1, 0xc

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :sswitch_8
    const-string/jumbo v1, "zg"

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_9

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_9
    const/16 p1, 0xb

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :sswitch_9
    const-string/jumbo v1, "zd"

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_a

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_a
    const/16 p1, 0xa

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :sswitch_a
    const-string/jumbo v1, "zb"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-nez v0, :cond_b

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_b
    const/16 p1, 0x9

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :sswitch_b
    const-string/jumbo v1, "za"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_c

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_c
    const/16 p1, 0x8

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :sswitch_c
    const-string/jumbo v1, "ms"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-nez v0, :cond_d

    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_d
    const/4 p1, 0x7

    .line 244
    goto :goto_0

    .line 245
    :sswitch_d
    const-string/jumbo v1, "mg"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_e

    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_e
    const/4 p1, 0x6

    .line 256
    goto :goto_0

    .line 257
    :sswitch_e
    const-string/jumbo v1, "mb"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-nez v0, :cond_f

    .line 265
    .line 266
    goto :goto_0

    .line 267
    :cond_f
    const/4 p1, 0x5

    .line 268
    goto :goto_0

    .line 269
    :sswitch_f
    const-string v1, "lb"

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_10

    .line 276
    .line 277
    goto :goto_0

    .line 278
    :cond_10
    const/4 p1, 0x4

    .line 279
    goto :goto_0

    .line 280
    :sswitch_10
    const-string v1, "gb"

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_11

    .line 287
    .line 288
    goto :goto_0

    .line 289
    :cond_11
    const/4 p1, 0x3

    .line 290
    goto :goto_0

    .line 291
    :sswitch_11
    const-string v1, "ed"

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_12

    .line 298
    .line 299
    goto :goto_0

    .line 300
    :cond_12
    const/4 p1, 0x2

    .line 301
    goto :goto_0

    .line 302
    :sswitch_12
    const-string v1, "di"

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_13

    .line 309
    .line 310
    goto :goto_0

    .line 311
    :cond_13
    const/4 p1, 0x1

    .line 312
    goto :goto_0

    .line 313
    :sswitch_13
    const-string v1, "cw"

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-nez v0, :cond_14

    .line 320
    .line 321
    goto :goto_0

    .line 322
    :cond_14
    const/4 p1, 0x0

    .line 323
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 324
    .line 325
    .line 326
    const-string p1, "black"

    .line 327
    .line 328
    goto :goto_1

    .line 329
    :pswitch_0
    const-string/jumbo p1, "yellow"

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :pswitch_1
    const-string/jumbo p1, "purple"

    .line 334
    .line 335
    .line 336
    goto :goto_1

    .line 337
    :pswitch_2
    const-string p1, "brown"

    .line 338
    .line 339
    goto :goto_1

    .line 340
    :pswitch_3
    const-string p1, "gold"

    .line 341
    .line 342
    goto :goto_1

    .line 343
    :pswitch_4
    const-string/jumbo p1, "orchid"

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :pswitch_5
    const-string/jumbo p1, "silver"

    .line 348
    .line 349
    .line 350
    goto :goto_1

    .line 351
    :pswitch_6
    const-string p1, "green"

    .line 352
    .line 353
    goto :goto_1

    .line 354
    :pswitch_7
    const-string p1, "blue"

    .line 355
    .line 356
    goto :goto_1

    .line 357
    :pswitch_8
    const-string/jumbo p1, "pink"

    .line 358
    .line 359
    .line 360
    goto :goto_1

    .line 361
    :pswitch_9
    const-string/jumbo p1, "white"

    .line 362
    .line 363
    .line 364
    :goto_1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLegacyDeviceColor:Ljava/lang/String;

    .line 365
    .line 366
    :cond_15
    :goto_2
    return-void

    .line 367
    :sswitch_data_0
    .sparse-switch
        0xc74 -> :sswitch_13
        0xc85 -> :sswitch_12
        0xc9f -> :sswitch_11
        0xcdb -> :sswitch_10
        0xd76 -> :sswitch_f
        0xd95 -> :sswitch_e
        0xd9a -> :sswitch_d
        0xda6 -> :sswitch_c
        0xf27 -> :sswitch_b
        0xf28 -> :sswitch_a
        0xf2a -> :sswitch_9
        0xf2d -> :sswitch_8
        0xf2f -> :sswitch_7
        0xf34 -> :sswitch_6
        0xf36 -> :sswitch_5
        0xf38 -> :sswitch_4
        0xf39 -> :sswitch_3
        0xf3c -> :sswitch_2
        0xf3d -> :sswitch_1
        0xf3f -> :sswitch_0
    .end sparse-switch

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method
