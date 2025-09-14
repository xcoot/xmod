.class public final Lcom/samsung/server/wallpaper/CMFWallpaper$3;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/CMFWallpaper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const-string v0, "CMFWallpaper"

    .line 2
    .line 3
    const-string v1, "ColorCodePollingThread run()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 9
    .line 10
    const-string/jumbo v2, "ril.product_code"

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iput-object v3, v1, Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    .line 18
    .line 19
    :goto_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 31
    .line 32
    iget v1, v1, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    .line 33
    .line 34
    if-lez v1, :cond_0

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v4, "ColorCodePollingThread sleep(1000) count="

    .line 39
    .line 40
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v4, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 44
    .line 45
    iget v4, v4, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-wide/16 v4, 0x3e8

    .line 58
    .line 59
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catch_0
    const-string v1, "InterruptedException occurred"

    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 69
    .line 70
    iget v4, v1, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    .line 71
    .line 72
    sub-int/2addr v4, v3

    .line 73
    iput v4, v1, Lcom/samsung/server/wallpaper/CMFWallpaper;->mLastColorCodePollingThreadCount:I

    .line 74
    .line 75
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iput-object v3, v1, Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/samsung/server/wallpaper/CMFWallpaper;->mProductCode:Ljava/lang/String;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    const/16 v5, 0xa

    .line 94
    .line 95
    if-ge v4, v5, :cond_1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_1
    const/16 v4, 0x8

    .line 99
    .line 100
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    goto :goto_3

    .line 109
    :cond_2
    :goto_2
    move-object v1, v2

    .line 110
    :goto_3
    if-eqz v1, :cond_4

    .line 111
    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v5, "Color code ("

    .line 115
    .line 116
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v5, ") retrieved!!"

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-static {v0, v4}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 135
    .line 136
    iget-object v4, v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mAlternativeCode:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, v1, v4}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getProperColorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/samsung/server/wallpaper/CMFWallpaper;->mHandler:Lcom/samsung/server/wallpaper/CMFWallpaper$1;

    .line 145
    .line 146
    const/16 v4, 0x3f5

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    .line 154
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-static {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    iput-object v4, v1, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v1, v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setLegacyDeviceColor(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v4, v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 178
    .line 179
    invoke-static {v4, v3, v2, v1}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    if-nez v4, :cond_4

    .line 184
    .line 185
    iget-object v4, v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    const/4 v5, 0x2

    .line 188
    invoke-static {v4, v5, v2, v1}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    if-nez v4, :cond_4

    .line 193
    .line 194
    iget-object v4, v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    invoke-static {v4, v3, v1}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    if-nez v3, :cond_4

    .line 201
    .line 202
    iget-object v0, v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    invoke-static {v0, v5, v1}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;ILjava/lang/String;)Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    if-eqz v0, :cond_3

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 212
    .line 213
    iget-object v0, v0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 216
    .line 217
    iget-object v0, v0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Lcom/samsung/server/wallpaper/DefaultWallpaper$1;

    .line 218
    .line 219
    const/16 v1, 0x3f0

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    .line 223
    .line 224
    :cond_4
    :goto_4
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 225
    .line 226
    iput-object v2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    .line 227
    .line 228
    return-void
.end method
