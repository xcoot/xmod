.class public final Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;
.super Lcom/android/server/policy/SideKeyDoublePress$Behavior;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final updateTargetComponent$com$android$server$policy$PhoneWindowManagerExt$OpeningBixby(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public doublePressLaunchPolicy(Z)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->doublePressLaunchPolicy(Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_1
    invoke-super {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->doublePressLaunchPolicy(Z)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 17
    .line 18
    const/16 p1, 0x1a

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->doublePressLaunchPolicy(I)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :pswitch_3
    invoke-super {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->doublePressLaunchPolicy(Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    throw p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :pswitch_1
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :pswitch_2
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :pswitch_3
    const/4 p0, 0x3

    .line 18
    return p0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v1, "android.intent.action.VIEW"

    .line 20
    .line 21
    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 22
    .line 23
    .line 24
    const/high16 p0, 0x10200000

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public showCoverToast(Landroid/content/Intent;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->showCoverToast(Landroid/content/Intent;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    sget-boolean p0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    xor-int/2addr v0, v1

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 26
    .line 27
    packed-switch p0, :pswitch_data_1

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_1
    const-string/jumbo p0, "showCoverToast"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string p0, "PhoneWindowManagerExt"

    .line 38
    .line 39
    const-string/jumbo p1, "neededShowCoverToast for cover"

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 47
    :goto_1
    return v1

    .line 48
    :pswitch_2
    const/4 p0, 0x0

    .line 49
    return p0

    .line 50
    :pswitch_3
    const/4 p0, 0x0

    .line 51
    return p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final startTargetApp(ZLandroid/content/Intent;Landroid/content/Intent;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x1a

    .line 3
    .line 4
    const-string v2, "HWB1002"

    .line 5
    .line 6
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->onFlashlightKeyPressed(I)V

    .line 14
    .line 15
    .line 16
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string p0, "Flashlight"

    .line 26
    .line 27
    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 32
    .line 33
    sget-object p2, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 34
    .line 35
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 36
    .line 37
    const-string/jumbo p3, "persona"

    .line 38
    .line 39
    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lcom/android/server/pm/PersonaManagerService;

    .line 51
    .line 52
    iput-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 53
    .line 54
    :cond_1
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 55
    .line 56
    if-nez p2, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_4

    .line 66
    .line 67
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-lez p2, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance p2, Landroid/content/Intent;

    .line 77
    .line 78
    const-string p3, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    .line 79
    .line 80
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/high16 p3, 0x10000000

    .line 84
    .line 85
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 91
    .line 92
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    :goto_0
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 97
    .line 98
    if-nez p2, :cond_5

    .line 99
    .line 100
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {p2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Lcom/android/server/pm/PersonaManagerService;

    .line 109
    .line 110
    iput-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 111
    .line 112
    :cond_5
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 113
    .line 114
    const/4 p2, 0x0

    .line 115
    const-string p3, "com.samsung.android.aliveprivacy"

    .line 116
    .line 117
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-nez p2, :cond_6

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    iget-object p2, p1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 125
    .line 126
    const/16 p3, 0x5a

    .line 127
    .line 128
    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    .line 136
    .line 137
    :goto_1
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 138
    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    const-string p0, "Quick switch to Secure Folder"

    .line 147
    .line 148
    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    return-void

    .line 152
    :pswitch_1
    if-eqz p1, :cond_8

    .line 153
    .line 154
    const-string p1, "ignoreUnlock"

    .line 155
    .line 156
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 160
    .line 161
    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 162
    .line 163
    iget-object v3, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    const/4 v7, 0x0

    .line 166
    const/4 v4, 0x0

    .line 167
    const/high16 v6, 0xc000000

    .line 168
    .line 169
    move-object v5, p2

    .line 170
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 179
    .line 180
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 183
    .line 184
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 185
    .line 186
    .line 187
    :goto_2
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 188
    .line 189
    if-eqz p1, :cond_9

    .line 190
    .line 191
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 192
    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    const-string p0, "Pay with Samsung Pay"

    .line 197
    .line 198
    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_9
    return-void

    .line 202
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchPowerDoublePressCamera()V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 208
    .line 209
    invoke-virtual {p1, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastDoubleClick(I)V

    .line 210
    .line 211
    .line 212
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 213
    .line 214
    if-eqz p1, :cond_a

    .line 215
    .line 216
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 217
    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    const-string p0, "Quick launch camera"

    .line 222
    .line 223
    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_a
    return-void

    .line 227
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 228
    .line 229
    sget-object p2, Lcom/android/server/policy/PhoneWindowManagerExt;->KEYCODE_DEBUG_LOG_ALLOWLIST:Ljava/util/Set;

    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    const-string p2, "PhoneWindowManagerExt"

    .line 235
    .line 236
    const-string p3, "launch double press tv mode"

    .line 237
    .line 238
    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    .line 242
    .line 243
    .line 244
    move-result p3

    .line 245
    if-eqz p3, :cond_b

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_b
    iget-object p3, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 249
    .line 250
    iget-object p3, p3, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 251
    .line 252
    const/16 v3, 0x8

    .line 253
    .line 254
    invoke-virtual {p3, v3, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    if-nez p3, :cond_c

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_c
    iget v1, p3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 262
    .line 263
    const/16 v3, 0x7d2

    .line 264
    .line 265
    if-eq v1, v3, :cond_d

    .line 266
    .line 267
    const/16 v3, 0x450

    .line 268
    .line 269
    if-eq v1, v3, :cond_d

    .line 270
    .line 271
    const-string p1, "launchDoublePressPowerTvMode: keyCustomizationInfo ID: "

    .line 272
    .line 273
    invoke-static {v1, p1, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_d
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 278
    .line 279
    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 280
    .line 281
    invoke-virtual {p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-eqz p2, :cond_e

    .line 286
    .line 287
    new-instance p2, Landroid/content/Intent;

    .line 288
    .line 289
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 290
    .line 291
    .line 292
    const-string v1, "afterKeyguardGone"

    .line 293
    .line 294
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    .line 296
    .line 297
    iget-object v5, p3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 298
    .line 299
    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 300
    .line 301
    iget-object v3, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 302
    .line 303
    const/4 v7, 0x0

    .line 304
    const/4 v4, 0x0

    .line 305
    const/high16 v6, 0xc000000

    .line 306
    .line 307
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    invoke-virtual {p1, p3, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_e
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    .line 316
    .line 317
    iget-object p2, p3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 318
    .line 319
    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 320
    .line 321
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 322
    .line 323
    .line 324
    :goto_3
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 325
    .line 326
    if-eqz p1, :cond_f

    .line 327
    .line 328
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 329
    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    const-string p0, "TV mode"

    .line 334
    .line 335
    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :cond_f
    return-void

    .line 339
    :pswitch_4
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 340
    .line 341
    if-eqz p1, :cond_10

    .line 342
    .line 343
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 344
    .line 345
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    const-string p0, "Bixby"

    .line 349
    .line 350
    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :cond_10
    return-void

    .line 354
    nop

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateTargetComponent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    :pswitch_2
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
