.class public final Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 7
    .line 8
    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v0, "ACTION***"

    .line 12
    .line 13
    const-string v1, "CameraService_worker"

    .line 14
    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;

    .line 39
    .line 40
    sget-object p2, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    .line 41
    .line 42
    const-string v0, "VtCameraProviderObserver"

    .line 43
    .line 44
    iget-object v2, p1, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x1

    .line 51
    :try_start_0
    const-string v4, "com.samsung.android.vtcamerasettings"

    .line 52
    .line 53
    const/16 v5, 0x8

    .line 54
    .line 55
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_0

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    :goto_0
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    array-length v4, v2

    .line 83
    const/4 v5, 0x0

    .line 84
    move v6, v5

    .line 85
    :goto_1
    if-ge v6, v4, :cond_3

    .line 86
    .line 87
    aget-object v7, v2, v6

    .line 88
    .line 89
    const-string v8, "com.samsung.android.vtcamerasettings.VsetInfoProvider"

    .line 90
    .line 91
    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    if-eqz v7, :cond_1

    .line 98
    .line 99
    iget-object v2, p1, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    sget-object v4, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;

    .line 106
    .line 107
    const-string v6, "AllowedAppInfo"

    .line 108
    .line 109
    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const/4 v6, -0x1

    .line 114
    invoke-virtual {v2, v4, v5, p1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 115
    .line 116
    .line 117
    const-string v2, "VT Camera provider exist. Observer registered."

    .line 118
    .line 119
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    invoke-static {p2, v2}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v3}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->onChange(Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    :try_start_1
    const-string p1, "Provider exist, but not (updated-)system app."

    .line 133
    .line 134
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :goto_2
    const-string/jumbo v2, "providerExistOrNot "

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_3
    const-string p1, "VT Camera provider does not exist. Skip observer register."

    .line 145
    .line 146
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    invoke-static {p2, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :goto_4
    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 153
    .line 154
    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker$3;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/samsung/android/camera/CameraServiceWorker$3;->pingForUpdate()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :catch_1
    move-exception p1

    .line 161
    const-string p2, "BootCompleteReceiver exception happen "

    .line 162
    .line 163
    invoke-static {p2, p1, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_5
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 167
    .line 168
    iput-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleted:Z

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_4
    const-string p1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 172
    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_5

    .line 182
    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 203
    .line 204
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mScpmReceiver:Lcom/samsung/android/camera/scpm/ScpmReceiver;

    .line 205
    .line 206
    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 207
    .line 208
    const/4 p2, 0x2

    .line 209
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    .line 211
    .line 212
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    .line 213
    .line 214
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    .line 216
    .line 217
    :cond_5
    :goto_6
    return-void
.end method
