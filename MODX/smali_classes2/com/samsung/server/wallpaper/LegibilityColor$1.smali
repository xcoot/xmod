.class public final Lcom/samsung/server/wallpaper/LegibilityColor$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/LegibilityColor;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/LegibilityColor;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$1;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$1;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 2
    .line 3
    iget v0, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/16 v1, 0x3f7

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const-string/jumbo v0, "need_dark_navigationbar"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "need_dark_statusbar"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "need_dark_font"

    .line 18
    .line 19
    .line 20
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, [I

    .line 27
    .line 28
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v3, "userId: "

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "LegibilityColor"

    .line 46
    .line 47
    invoke-static {v3, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    const-string/jumbo v4, "setWhiteBgSettings"

    .line 52
    .line 53
    .line 54
    move v5, v2

    .line 55
    move v6, v5

    .line 56
    :goto_0
    :try_start_0
    array-length v7, v1

    .line 57
    if-ge v5, v7, :cond_2

    .line 58
    .line 59
    aget v7, v1, v5

    .line 60
    .line 61
    iget-object v8, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    aget-object v9, v0, v5

    .line 68
    .line 69
    invoke-static {v8, v9, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v10, ", area["

    .line 82
    .line 83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v10, "] oldVal = "

    .line 90
    .line 91
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v10, " newVal = "

    .line 98
    .line 99
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eq v8, v7, :cond_1

    .line 110
    .line 111
    iget-object v8, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    aget-object v9, v0, v5

    .line 118
    .line 119
    invoke-static {v8, v9, v7, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 120
    .line 121
    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string/jumbo v9, "set "

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    aget-object v9, v0, v5

    .line 134
    .line 135
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v9, " :"

    .line 139
    .line 140
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-static {v3, v7}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    const/4 v6, 0x1

    .line 154
    goto :goto_1

    .line 155
    :catch_0
    move-exception p1

    .line 156
    goto :goto_2

    .line 157
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v1, "failed to get/put "

    .line 163
    .line 164
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {v3, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_2
    invoke-static {v3, v4}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    if-eqz v6, :cond_3

    .line 181
    .line 182
    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 183
    .line 184
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 185
    .line 186
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Lcom/samsung/server/wallpaper/DefaultWallpaper$1;

    .line 187
    .line 188
    const/16 p1, 0x3ef

    .line 189
    .line 190
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 195
    .line 196
    .line 197
    const-string p0, "DefaultWallpaper"

    .line 198
    .line 199
    const-string/jumbo p1, "send ChangedIntent complete"

    .line 200
    .line 201
    .line 202
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_3
    :goto_3
    return-void
.end method
