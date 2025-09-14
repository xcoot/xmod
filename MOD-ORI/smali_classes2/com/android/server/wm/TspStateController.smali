.class public final Lcom/android/server/wm/TspStateController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final URI_SETTING_TSP_DEBUG:Landroid/net/Uri;

.field public static final URI_SETTING_TSP_THRESHOLD:Landroid/net/Uri;


# instance fields
.field public final clearDeadzoneHole:Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;

.field public final m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public final m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public final m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

.field public mAwake:Z

.field public final mContext:Landroid/content/Context;

.field public final mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

.field public final mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public final mDeadzoneHoleMap:Landroid/util/ArrayMap;

.field public final mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

.field public final mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

.field public mFocusedWindow:Ljava/lang/String;

.field public mGameManager:Lcom/samsung/android/game/SemGameManager;

.field public final mH:Lcom/android/server/wm/TspStateController$H;

.field public mImeTargetWindow:Lcom/android/server/wm/WindowState;

.field public mImeWindow:Lcom/android/server/wm/WindowState;

.field public mImeWindowVisible:Z

.field public mIsEnabledCustomSetting:Z

.field public mIsImmShowing:Z

.field public mIsPortrait:Z

.field public mLastDeadzoneHole:Ljava/lang/String;

.field public mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mLastLandCmd:Ljava/lang/String;

.field public mLastNoteMode:Z

.field public mLastPortCmd:Ljava/lang/String;

.field public mReserveLandCmd:Ljava/lang/String;

.field public mReservePortCmd:Ljava/lang/String;

.field public mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public final mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

.field public mTspThresholdSetting:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "setting_tsp_threshold"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_THRESHOLD:Landroid/net/Uri;

    .line 9
    .line 10
    const-string/jumbo v0, "setting_tsp_debug"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_DEBUG:Landroid/net/Uri;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    .line 5
    .line 6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    move v4, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v4, v3

    .line 15
    :goto_0
    invoke-direct {v0, v4}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/4 v4, 0x6

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v4, 0x4

    .line 27
    :goto_1
    invoke-direct {v0, v4}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/16 v1, 0x9

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 v1, 0x7

    .line 40
    :goto_2
    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    .line 44
    .line 45
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 53
    .line 54
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    .line 55
    .line 56
    const/16 v1, 0xd

    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 62
    .line 63
    new-instance v0, Lcom/android/server/wm/TspGripCommand;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/android/server/wm/TspGripCommand;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mCurrentCommand:Lcom/android/server/wm/TspGripCommand;

    .line 69
    .line 70
    iput-boolean v3, p0, Lcom/android/server/wm/TspStateController;->mLastNoteMode:Z

    .line 71
    .line 72
    iput-boolean v3, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    .line 76
    .line 77
    new-instance v1, Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    .line 83
    .line 84
    const-string v1, ""

    .line 85
    .line 86
    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mTspThresholdSetting:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v1, Lcom/android/server/wm/TspStateController$H;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/android/server/wm/TspStateController$H;-><init>(Lcom/android/server/wm/TspStateController;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    iput-object v4, p0, Lcom/android/server/wm/TspStateController;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 97
    .line 98
    new-instance v5, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;

    .line 99
    .line 100
    invoke-direct {v5, p0}, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TspStateController;)V

    .line 101
    .line 102
    .line 103
    iput-object v5, p0, Lcom/android/server/wm/TspStateController;->clearDeadzoneHole:Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;

    .line 104
    .line 105
    iput-boolean v3, p0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    .line 106
    .line 107
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    new-instance v5, Lcom/android/server/wm/TspStateController$SettingsObserver;

    .line 110
    .line 111
    invoke-direct {v5, p0, v1}, Lcom/android/server/wm/TspStateController$SettingsObserver;-><init>(Lcom/android/server/wm/TspStateController;Lcom/android/server/wm/TspStateController$H;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    sget-object v6, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_THRESHOLD:Landroid/net/Uri;

    .line 119
    .line 120
    const/4 v7, -0x1

    .line 121
    invoke-virtual {v1, v6, v0, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 122
    .line 123
    .line 124
    sget-object v6, Lcom/android/server/wm/TspStateController;->URI_SETTING_TSP_DEBUG:Landroid/net/Uri;

    .line 125
    .line 126
    invoke-virtual {v1, v6, v0, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string/jumbo v5, "setting_tsp_threshold"

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mTspThresholdSetting:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string/jumbo v5, "setting_tsp_debug"

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    new-instance v1, Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 155
    .line 156
    .line 157
    iput v7, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 158
    .line 159
    iput v7, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 160
    .line 161
    iput v7, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    .line 162
    .line 163
    iput v7, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    .line 164
    .line 165
    iput-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->initDefaultValues()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController;->updateCustomValue()V

    .line 171
    .line 172
    .line 173
    new-instance v6, Lcom/android/server/wm/TspStateController$TspDebug;

    .line 174
    .line 175
    iget v7, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 176
    .line 177
    iget v1, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 178
    .line 179
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    iput v7, v6, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayWidth:I

    .line 183
    .line 184
    iput v1, v6, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayHeight:I

    .line 185
    .line 186
    iput-object v6, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    .line 187
    .line 188
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v1, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-ne v1, v3, :cond_3

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_3
    move v3, v0

    .line 202
    :goto_3
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    .line 203
    .line 204
    iput-boolean v3, v1, Lcom/android/server/wm/TspStateController$TspDebug;->mEnabled:Z

    .line 205
    .line 206
    const-string/jumbo v1, "tspstatemanager"

    .line 207
    .line 208
    .line 209
    const-string v3, "init"

    .line 210
    .line 211
    invoke-static {v1, v3}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v3, "0,0,0,0"

    .line 215
    .line 216
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 217
    .line 218
    .line 219
    const-string/jumbo p0, "semcustomdump"

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    check-cast p0, Lcom/samsung/android/sepunion/SemCustomDumpManager;

    .line 227
    .line 228
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/sepunion/SemCustomDumpManager;->setDumpState(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-void
.end method


# virtual methods
.method public final initDefaultValues()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mDeviceDefaultTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_USE_SMALLER_GRIPZONE_ON_GAME:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyGameTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 25
    .line 26
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final setOrientation(ZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_6

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wm/TspStateController;->mDeadzoneHoleMap:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 15
    .line 16
    .line 17
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/server/wm/TspStateController;->clearDeadzoneHole:Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/android/server/wm/TspStateController;->clearDeadzoneHole:Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const-wide/16 v0, 0x96

    .line 33
    .line 34
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    const-string p0, "TspStateManager"

    .line 47
    .line 48
    const-string/jumbo p1, "setOrientation mReservePortCmd is null."

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    const-string/jumbo p1, "tspstatemanager"

    .line 64
    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string/jumbo v1, "setOrientation TSP_COMMAND_TYPE_PORT : "

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    const-string/jumbo p1, "tspstatemanager"

    .line 98
    .line 99
    .line 100
    const-string/jumbo v0, "setOrientation TSP_COMMAND_TYPE_SAME"

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string p1, "2,0"

    .line 107
    .line 108
    const/4 v0, 0x4

    .line 109
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    .line 114
    .line 115
    if-nez p1, :cond_5

    .line 116
    .line 117
    const-string p0, "TspStateManager"

    .line 118
    .line 119
    const-string/jumbo p1, "setOrientation mReserveLandCmd is null."

    .line 120
    .line 121
    .line 122
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_5
    const-string/jumbo p1, "tspstatemanager"

    .line 127
    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string/jumbo v1, "setOrientation TSP_COMMAND_TYPE_LAND : "

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    .line 150
    .line 151
    const/4 v0, 0x2

    .line 152
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    .line 156
    .line 157
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    .line 158
    .line 159
    :cond_6
    :goto_0
    return-void

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    throw p0
.end method

.method public final updateCustomValue()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mTspThresholdSetting:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x10403c7

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    const-string/jumbo v1, "updateCustomValue customSetting="

    .line 23
    .line 24
    .line 25
    const-string v2, "TspStateManager"

    .line 26
    .line 27
    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    .line 32
    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const-string v3, ";"

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    :goto_0
    move-object v2, v4

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    array-length v5, v2

    .line 56
    if-gtz v5, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    aget-object v2, v2, v1

    .line 60
    .line 61
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 62
    .line 63
    iget-object v6, p0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 64
    .line 65
    invoke-virtual {v5, v6, v2, v1}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iput-boolean v2, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    .line 70
    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    array-length v2, v0

    .line 83
    const/4 v3, 0x1

    .line 84
    if-gt v2, v3, :cond_5

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    aget-object v4, v0, v3

    .line 88
    .line 89
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 90
    .line 91
    invoke-virtual {v0, v6, v4, v1}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->m3rdPartyTspCommandForIme:Lcom/android/server/wm/TspGripCommand;

    .line 95
    .line 96
    invoke-virtual {p0, v6, v4, v1}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final updateTspCommand(Lcom/android/server/wm/TspGripCommand;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsEnabledCustomSetting:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mCustomTspCommand:Lcom/android/server/wm/TspGripCommand;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TspGripCommand;->set(Lcom/android/server/wm/TspGripCommand;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "1,"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v1, p1, Lcom/android/server/wm/TspGripCommand;->mPortEdgeZone:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x2c

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mPortX1:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mPortX2:I

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mPortY1:I

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_V3:Z

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mPortX3:I

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mPortY2:I

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v2, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v3, 0x0

    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    iget-boolean v2, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    .line 82
    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mLastPortCmd:Ljava/lang/String;

    .line 90
    .line 91
    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/TspStateController;->mReservePortCmd:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v2, "2,1,"

    .line 96
    .line 97
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mLandEdgeZone:I

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mLandX1:I

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopRejectWidth:I

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomRejectWidth:I

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget v2, p1, Lcom/android/server/wm/TspGripCommand;->mLandTopGripWidth:I

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget p1, p1, Lcom/android/server/wm/TspGripCommand;->mLandBottomGripWidth:I

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_3

    .line 156
    .line 157
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController;->mIsPortrait:Z

    .line 158
    .line 159
    if-nez v0, :cond_3

    .line 160
    .line 161
    const/4 v0, 0x2

    .line 162
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastLandCmd:Ljava/lang/String;

    .line 166
    .line 167
    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mReserveLandCmd:Ljava/lang/String;

    .line 168
    .line 169
    return-void
.end method

.method public final updateWindowPolicy(Lcom/android/server/wm/WindowState;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-wide/16 v0, 0x1f4

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final writeDeadzoneHoleCmd(III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "0,"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x2c

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/android/server/wm/TspStateController;->mLastDeadzoneHole:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastDeadzoneHole:Ljava/lang/String;

    .line 39
    .line 40
    const-string/jumbo p1, "tspstatemanager"

    .line 41
    .line 42
    .line 43
    const-string/jumbo p2, "setDeadzoneHole"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/wm/TspStateController;->mLastDeadzoneHole:Ljava/lang/String;

    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    const/4 p3, 0x3

    .line 53
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/wm/TspStateController;->writeTspCommandToSysfsInner(ILjava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final writeTspCommandToSysfsInner(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/wm/TspStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TspStateController;ZILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo p0, "tspStateManager"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
