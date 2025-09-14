.class public final Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final DEBUG:Z

.field public mAtcAlreadyEnable:Z

.field public mAtcEnableSetting:Z

.field public mBootCompleted:Z

.field public final mContext:Landroid/content/Context;

.field public final mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

.field public final mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

.field public final mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

.field public final mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

.field public final mLock:Ljava/lang/Object;

.field public mTuneEnableSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 6
    const-string/jumbo v1, "eng"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 13
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->DEBUG:Z

    .line 15
    new-instance v2, Ljava/lang/Object;

    .line 17
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 22
    const/4 v2, 0x0

    .line 23
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 25
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 27
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 29
    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 31
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    .line 34
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mTuneEnableSetting:Z

    .line 36
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 38
    iput-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcAlreadyEnable:Z

    .line 40
    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 42
    new-instance v3, Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 44
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    const-string v5, "/vendor/etc/dqe/"

    .line 51
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {v4, p2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    if-nez v4, :cond_0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_1

    .line 67
    :goto_0
    const-string v4, "/vendor/etc/dqe"

    .line 69
    :cond_1
    iput-object v4, v3, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->mXmlPath:Ljava/lang/String;

    .line 71
    const-string v4, "/sys/class/dqe/dqe"

    .line 73
    if-nez p2, :cond_2

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {v5, p2}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 84
    move-result-object v4

    .line 85
    :goto_1
    iput-object v4, v3, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->mSysfsPath:Ljava/lang/String;

    .line 87
    new-instance v4, Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 89
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    const-string v1, "0"

    .line 97
    iput-object v1, v4, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_OFF:Ljava/lang/String;

    .line 99
    const-string v1, "1"

    .line 101
    iput-object v1, v4, Lcom/android/server/display/exynos/ExynosDisplayTune;->EXTENSION_ON:Ljava/lang/String;

    .line 103
    const-wide/16 v5, 0x3e8

    .line 105
    iput-wide v5, v4, Lcom/android/server/display/exynos/ExynosDisplayTune;->mDelayMs:J

    .line 107
    iput-wide v5, v4, Lcom/android/server/display/exynos/ExynosDisplayTune;->mPeriodMs:J

    .line 109
    const-string v1, "/data/dqe/calib_data.xml"

    .line 111
    iput-object v1, v4, Lcom/android/server/display/exynos/ExynosDisplayTune;->CALIB_DATA_XML_PATH:Ljava/lang/String;

    .line 113
    iput-object v3, v4, Lcom/android/server/display/exynos/ExynosDisplayTune;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    .line 115
    iput-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 117
    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 119
    invoke-direct {v1, v3}, Lcom/android/server/display/exynos/ExynosDisplayColor;-><init>(Lcom/android/server/display/exynos/ExynosDisplayAdapter;)V

    .line 122
    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayColor:Lcom/android/server/display/exynos/ExynosDisplayColor;

    .line 124
    new-instance v5, Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 126
    invoke-direct {v5, p1, v3}, Lcom/android/server/display/exynos/ExynosDisplayATC;-><init>(Landroid/content/Context;Lcom/android/server/display/exynos/ExynosDisplayAdapter;)V

    .line 129
    iput-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 131
    new-instance v6, Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 133
    invoke-direct {v6, p1, v3}, Lcom/android/server/display/exynos/ExynosDisplayFactory;-><init>(Landroid/content/Context;Lcom/android/server/display/exynos/ExynosDisplayAdapter;)V

    .line 136
    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayFactory:Lcom/android/server/display/exynos/ExynosDisplayFactory;

    .line 138
    iput-object v4, v1, Lcom/android/server/display/exynos/ExynosDisplayColor;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 143
    move-result-object v1

    .line 144
    const v3, 0x10e006c

    .line 147
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 150
    move-result v1

    .line 151
    const/4 v3, 0x2

    .line 152
    const/4 v4, 0x1

    .line 153
    if-eq v1, v3, :cond_4

    .line 155
    const/4 v3, 0x3

    .line 156
    if-ne v1, v3, :cond_3

    .line 158
    goto :goto_2

    .line 159
    :cond_3
    move v1, v2

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    :goto_2
    move v1, v4

    .line 162
    :goto_3
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 164
    if-eqz v1, :cond_5

    .line 166
    invoke-virtual {v5, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 169
    :cond_5
    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$SettingsObserver;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 174
    move-result-object v3

    .line 175
    invoke-direct {v1, p0, v3}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$SettingsObserver;-><init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;Landroid/os/Handler;)V

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 181
    move-result-object v3

    .line 182
    const-string/jumbo v4, "dqe_tune_enabled"

    .line 185
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 188
    move-result-object v4

    .line 189
    const/4 v5, -0x1

    .line 190
    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 193
    const-string v4, "atc_mode_enabled"

    .line 195
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 202
    const-string/jumbo v4, "display_color_mode"

    .line 205
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 212
    new-instance v1, Landroid/content/IntentFilter;

    .line 214
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 219
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 224
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 229
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v2, "android.intent.action.USER_PRESENT"

    .line 234
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    new-instance v2, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;

    .line 239
    invoke-direct {v2, p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl$ScreenBroadcastReceiver;-><init>(Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;)V

    .line 242
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->settingChanged()V

    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    .line 250
    const-string p1, "ExynosDisplaySolutionManagerServiceImpl["

    .line 252
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    const-string p1, "] created "

    .line 260
    const-string p2, "ExynosDisplaySolutionManagerServiceImpl"

    .line 262
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method


# virtual methods
.method public final settingChanged()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "dqe_tune_enabled"

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x2

    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 15
    move-result v1

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    move v1, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 24
    const-string v6, "atc_mode_enabled"

    .line 26
    invoke-static {v0, v6, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v4, v2

    .line 34
    :goto_1
    const-string/jumbo v5, "display_color_mode"

    .line 37
    invoke-static {v0, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 40
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mTuneEnableSetting:Z

    .line 42
    if-eq v0, v1, :cond_2

    .line 44
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    .line 46
    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayTune:Lcom/android/server/display/exynos/ExynosDisplayTune;

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayTune;->enableTuneTimer(Z)V

    .line 53
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mTuneEnableSetting:Z

    .line 55
    iget-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 57
    if-eq v0, v4, :cond_3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v1, "settingChanged: ATC "

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, " -> "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    const-string v1, "ExynosDisplaySolutionManagerServiceImpl"

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mExynosDisplayATC:Lcom/android/server/display/exynos/ExynosDisplayATC;

    .line 91
    invoke-virtual {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableATC(Z)V

    .line 94
    iget-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mBootCompleted:Z

    .line 96
    if-eqz v1, :cond_3

    .line 98
    invoke-virtual {v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayATC;->enableLightSensor(Z)V

    .line 101
    :cond_3
    iput-boolean v4, p0, Lcom/android/server/display/exynos/ExynosDisplaySolutionManagerServiceImpl;->mAtcEnableSetting:Z

    .line 103
    return-void
.end method
