.class public final synthetic Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AlertWindowNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AlertWindowNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AlertWindowNotification;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AlertWindowNotification;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    :try_start_0
    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-object v7, v5

    .line 30
    :goto_0
    if-eqz v7, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v8, v0

    .line 42
    :goto_1
    sget-object v9, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 43
    .line 44
    if-nez v9, :cond_2

    .line 45
    .line 46
    new-instance v9, Landroid/app/NotificationChannelGroup;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const v10, 0x10401af

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v10, "com.android.server.wm.AlertWindowNotification - "

    .line 58
    .line 59
    invoke-direct {v9, v10, v2}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    sput-object v9, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 65
    .line 66
    invoke-virtual {v2, v9}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    const v2, 0x10401b0

    .line 70
    .line 71
    .line 72
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-virtual {v3, v2, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v9, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 81
    .line 82
    iget-object v10, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    if-eqz v9, :cond_3

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_3
    new-instance v9, Landroid/app/NotificationChannel;

    .line 92
    .line 93
    invoke-direct {v9, v10, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v6}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v6}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 103
    .line 104
    .line 105
    sget-object v2, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v9, v2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 118
    .line 119
    invoke-virtual {v2, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 120
    .line 121
    .line 122
    :goto_2
    const v2, 0x10401b1

    .line 123
    .line 124
    .line 125
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-virtual {v3, v2, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    new-instance v9, Landroid/os/Bundle;

    .line 134
    .line 135
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v11, "android.foregroundApps"

    .line 139
    .line 140
    filled-new-array {v0}, [Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v11, Landroid/app/Notification$Builder;

    .line 148
    .line 149
    invoke-direct {v11, v3, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    const v12, 0x10401b2

    .line 157
    .line 158
    .line 159
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v3, v12, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    const v11, 0x108011c

    .line 176
    .line 177
    .line 178
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    const v11, 0x106001c

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v11}, Landroid/content/Context;->getColor(I)I

    .line 186
    .line 187
    .line 188
    move-result v11

    .line 189
    invoke-virtual {v8, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    new-instance v11, Landroid/app/Notification$BigTextStyle;

    .line 194
    .line 195
    invoke-direct {v11}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    new-instance v2, Landroid/content/Intent;

    .line 215
    .line 216
    const-string/jumbo v8, "package"

    .line 217
    .line 218
    .line 219
    invoke-static {v8, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    const-string v5, "android.settings.MANAGE_APP_OVERLAY_PERMISSION"

    .line 224
    .line 225
    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .line 227
    .line 228
    const v0, 0x10008000

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    .line 233
    .line 234
    iget v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mRequestCode:I

    .line 235
    .line 236
    const/high16 v5, 0x14000000

    .line 237
    .line 238
    invoke-static {v3, v0, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v7, :cond_4

    .line 247
    .line 248
    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    const/high16 v3, 0x1050000

    .line 257
    .line 258
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    invoke-static {v1, v2, v2}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    if-eqz v1, :cond_4

    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 269
    .line 270
    .line 271
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 272
    .line 273
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {p0, v10, v6, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 278
    .line 279
    .line 280
    :goto_3
    return-void
.end method
