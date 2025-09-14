.class public final Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final AUTO_CURRENT_LIMIT_VERSION:I

.field public final AVAILABLE_ADAPTIVE_CONTROL:Z

.field public mACLwithBrightness:Z

.field public mADSEnableCondition:Z

.field public final mAdaptiveControlValues:[Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAutoCurrentLimitValue:I

.field public mDetailViewState:Z

.field public mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "eng"

    .line 5
    .line 6
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-object v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v3, "AdaptiveDisplaySolutionServiceThread"

    .line 29
    .line 30
    invoke-static {v3}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v4, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {v4, v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const v3, 0x1110017

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const-string v3, "/sys/class/lcd/panel/adaptive_control"

    .line 55
    .line 56
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const-string v5, "AdaptiveDisplaySolutionService"

    .line 61
    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const v6, 0x1070088

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iput-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const v6, 0x10e001b

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    iput v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 92
    .line 93
    const-string v6, "AUTO_CURRENT_LIMIT_VERSION : "

    .line 94
    .line 95
    invoke-static {v3, v6, v5}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    .line 100
    .line 101
    :goto_0
    new-instance v3, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;

    .line 102
    .line 103
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const-string/jumbo v6, "screen_brightness"

    .line 111
    .line 112
    .line 113
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v4, v6, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 118
    .line 119
    .line 120
    const-string/jumbo v6, "screen_brightness_mode"

    .line 121
    .line 122
    .line 123
    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v4, v6, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 128
    .line 129
    .line 130
    new-instance v10, Landroid/content/IntentFilter;

    .line 131
    .line 132
    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 136
    .line 137
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 141
    .line 142
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 146
    .line 147
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 151
    .line 152
    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-instance v8, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;

    .line 156
    .line 157
    invoke-direct {v8, p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;)V

    .line 158
    .line 159
    .line 160
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 161
    .line 162
    const/4 v11, 0x0

    .line 163
    const/4 v12, 0x0

    .line 164
    move-object v7, p1

    .line 165
    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    const-string/jumbo p0, "sys.adaptivedisplaysolution.adson"

    .line 169
    .line 170
    .line 171
    const-string p1, "false"

    .line 172
    .line 173
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    if-eqz v2, :cond_1

    .line 177
    .line 178
    const-string/jumbo p1, "true"

    .line 179
    .line 180
    .line 181
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_1
    const-string p0, "AdaptiveDisplaySolutionService Enabled"

    .line 185
    .line 186
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    return-void
.end method

.method public static fileWriteInt(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "UTF-8"

    .line 23
    .line 24
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception p0

    .line 40
    move-object p1, v1

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catch_2
    move-exception p0

    .line 45
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_3
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_1
    return-void
.end method

.method public static fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 3
    .line 4
    new-instance v2, Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    .line 11
    .line 12
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception p0

    .line 24
    move-object v0, v1

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception p0

    .line 27
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_2
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :catch_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final setAutoCurrentLimitState(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setAutoCurrentLimitState("

    .line 2
    .line 3
    .line 4
    const-string v1, ") , mADSEnableCondition : "

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    .line 11
    .line 12
    const-string v0, "AdaptiveDisplaySolutionService"

    .line 13
    .line 14
    invoke-static {v0, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setAutoCurrentLimitStateWithBrightness(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "screen_brightness"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    .line 18
    .line 19
    const-string/jumbo v1, "setAutoCurrentLimitStateWithBrightness("

    .line 20
    .line 21
    .line 22
    const-string v2, ") , mADSEnableCondition : "

    .line 23
    .line 24
    invoke-static {v1, v2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    .line 29
    .line 30
    const-string v3, "AdaptiveDisplaySolutionService"

    .line 31
    .line 32
    invoke-static {v3, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStatewithBrightness(IZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setGalleryDetailViewMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v0, "setGalleryDetailViewMode() : "

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mDetailViewState:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, " , mADSEnableCondition : "

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mADSEnableCondition:Z

    .line 22
    .line 23
    const-string v0, "AdaptiveDisplaySolutionService"

    .line 24
    .line 25
    invoke-static {v0, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final updateAdaptiveControlStateInt(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v0, "updateAdaptiveControlStateInt("

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    .line 12
    .line 13
    const-string v1, ")"

    .line 14
    .line 15
    const-string v2, "AdaptiveDisplaySolutionService"

    .line 16
    .line 17
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string v0, "DisplaySolution"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-string p0, "!AVAILABLE_ADAPTIVE_CONTROL"

    .line 37
    .line 38
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x1

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    const/4 v5, 0x2

    .line 49
    if-ne v0, v5, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-eq v0, v4, :cond_2

    .line 53
    .line 54
    const/4 v4, 0x3

    .line 55
    if-eq v0, v4, :cond_2

    .line 56
    .line 57
    const/4 v4, 0x4

    .line 58
    if-eq v0, v4, :cond_2

    .line 59
    .line 60
    const/4 v4, 0x5

    .line 61
    if-ne v0, v4, :cond_4

    .line 62
    .line 63
    :cond_2
    invoke-virtual {p1, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 67
    .line 68
    invoke-virtual {p1, v3}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    :goto_0
    invoke-virtual {p1, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 76
    .line 77
    invoke-virtual {p1, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v0, "[AdaptiveControl]: ACL VALUE ("

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    .line 88
    .line 89
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string p1, "/sys/class/lcd/panel/adaptive_control"

    .line 93
    .line 94
    iget v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    .line 95
    .line 96
    invoke-static {v0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteInt(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Ljava/io/File;

    .line 100
    .line 101
    const-string v0, "/sys/class/lcd/panel1/adaptive_control"

    .line 102
    .line 103
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    iget p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    .line 113
    .line 114
    invoke-static {p1, v0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteInt(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    .line 118
    .line 119
    return-void
.end method

.method public final updateAdaptiveControlStatewithBrightness(IZ)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateAdaptiveControlStatewithBrightness("

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ")"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "AdaptiveDisplaySolutionService"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v2, "DisplaySolution"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AVAILABLE_ADAPTIVE_CONTROL:Z

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    const-string p0, "!AVAILABLE_ADAPTIVE_CONTROL"

    .line 43
    .line 44
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    const-string v0, "/sys/class/lcd/panel/adaptive_control"

    .line 49
    .line 50
    const-string v2, "/sys/class/lcd/panel1/adaptive_control"

    .line 51
    .line 52
    iget-object v3, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mAdaptiveControlValues:[Ljava/lang/String;

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    const/16 p2, 0xff

    .line 58
    .line 59
    if-lt p1, p2, :cond_2

    .line 60
    .line 61
    const-string p1, "[AdaptiveControl]: ACL OFF(with brightness)"

    .line 62
    .line 63
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 67
    .line 68
    invoke-virtual {p1, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 74
    .line 75
    .line 76
    array-length p0, v3

    .line 77
    sub-int/2addr p0, v4

    .line 78
    :goto_0
    if-ltz p0, :cond_4

    .line 79
    .line 80
    aget-object p1, v3, p0

    .line 81
    .line 82
    invoke-static {v0, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Ljava/io/File;

    .line 86
    .line 87
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    aget-object p1, v3, p0

    .line 97
    .line 98
    invoke-static {v2, p1}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    const-string p1, "[AdaptiveControl]: ACL ON(with brightness)"

    .line 105
    .line 106
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 110
    .line 111
    const/4 p2, 0x0

    .line 112
    invoke-virtual {p1, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitOffMode(Z)V

    .line 113
    .line 114
    .line 115
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 116
    .line 117
    invoke-virtual {p0, p2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setAutoCurrentLimitOffModeEnabled(Z)V

    .line 118
    .line 119
    .line 120
    :goto_1
    array-length p0, v3

    .line 121
    if-ge v4, p0, :cond_4

    .line 122
    .line 123
    aget-object p0, v3, v4

    .line 124
    .line 125
    invoke-static {v0, p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    new-instance p0, Ljava/io/File;

    .line 129
    .line 130
    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_3

    .line 138
    .line 139
    aget-object p0, v3, v4

    .line 140
    .line 141
    invoke-static {v2, p0}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_4
    return-void
.end method
