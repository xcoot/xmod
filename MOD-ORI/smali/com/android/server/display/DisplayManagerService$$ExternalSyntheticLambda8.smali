.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/display/DisplayManagerService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :pswitch_0
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_1
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const-string v0, "Exception occur : "

    .line 68
    .line 69
    const-string/jumbo v1, "handleBrightnessAnimation: started="

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 73
    .line 74
    monitor-enter v2

    .line 75
    :try_start_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    .line 76
    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    iget-boolean v3, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessAnimStarted:Z

    .line 80
    .line 81
    if-eq v3, p1, :cond_3

    .line 82
    .line 83
    const-string v3, "DisplayManagerService"

    .line 84
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessAnimStarted:Z

    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_LCD_SUPPORT_PASSIVE_MODE:Z

    .line 105
    .line 106
    if-eqz p1, :cond_1

    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-instance v0, Landroid/os/Binder;

    .line 117
    .line 118
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v1, "BrightnessAnim"

    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/mode/RefreshRateController;->createPassiveModeToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessAnimRefreshRateToken:Lcom/android/server/display/mode/RefreshRateToken;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    goto :goto_2

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 133
    .line 134
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    new-instance v0, Landroid/os/Binder;

    .line 141
    .line 142
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 143
    .line 144
    .line 145
    sget v1, Lcom/android/server/power/PowerManagerUtil;->BRIGHTNESS_ANIMATION_MIN_LIMIT_HZ:I

    .line 146
    .line 147
    const-string v3, "BrightnessAnim"

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {v1, v0, v3}, Lcom/android/server/display/mode/RefreshRateController;->createRefreshRateMinLimitToken(ILandroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessAnimRefreshRateToken:Lcom/android/server/display/mode/RefreshRateToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessAnimRefreshRateToken:Lcom/android/server/display/mode/RefreshRateToken;

    .line 160
    .line 161
    if-eqz p0, :cond_3

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateToken;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :catch_0
    move-exception p0

    .line 168
    :try_start_2
    const-string p1, "DisplayManagerService"

    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_3
    :goto_1
    monitor-exit v2

    .line 186
    return-void

    .line 187
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    throw p0

    .line 189
    :pswitch_3
    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    .line 190
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/DisplayPowerController;

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
