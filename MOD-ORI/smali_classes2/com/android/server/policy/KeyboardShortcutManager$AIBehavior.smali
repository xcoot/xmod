.class public final Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;
.super Lcom/android/server/policy/KeyboardShortcutManager$Behavior;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;->$r8$classId:I

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 7
    const-string p1, "android.settings.SETTINGS"

    const/high16 p2, 0x4000000

    .line 8
    invoke-static {p2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;->$r8$classId:I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    .line 3
    iput-object p3, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    .line 4
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->IFW_AI_HOT_KEY:Z

    if-eqz p0, :cond_0

    .line 5
    const-string p0, "from_keyboard_shortcut"

    const-string/jumbo p1, "true"

    invoke-virtual {p3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public preCondition()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;->$r8$classId:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->preCondition()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const-string v2, "KeyboardShortcutManager"

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string p0, "GameBooster is not launched on keyguard"

    .line 25
    .line 26
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "com.samsung.android.game.gametools"

    .line 37
    .line 38
    const/16 v3, 0x80

    .line 39
    .line 40
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 45
    .line 46
    const-string v0, "Feature.External.Action"

    .line 47
    .line 48
    const-string v3, ""

    .line 49
    .line 50
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string/jumbo v0, "togglemenu"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    xor-int/2addr v1, p0

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    const-string p0, "GameBooster not installed"

    .line 64
    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    .line 70
    :sswitch_1
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->IFW_AI_HOT_KEY:Z

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    const-string v2, "KeyboardShortcutManager"

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAIPackages()Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/util/ArraySet;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyDisabled:Z

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    const-string p0, "AI key is disabled (cmd + o)"

    .line 97
    .line 98
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->externalKeyboardPolicy()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    :goto_1
    const-string p0, "AI hot key is not supported."

    .line 108
    .line 109
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :goto_2
    return v1

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public startTargetApp(I)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;->$r8$classId:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->startTargetApp(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :sswitch_0
    const-string p1, "KeyboardShortcutManager"

    .line 12
    .line 13
    const-string/jumbo v0, "send broadcast game booster toggle menu"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    .line 22
    .line 23
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-string/jumbo v0, "statusbar"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/app/StatusBarManager;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :sswitch_1
    const-string p1, "KeyboardShortcutManager"

    .line 54
    .line 55
    const-string/jumbo v0, "start AI function"

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance v0, Landroid/content/Intent;

    .line 62
    .line 63
    const-string v1, "com.samsung.android.intent.action.AI_ASSIST"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v1, "from_keyboard_shortcut"

    .line 69
    .line 70
    const-string/jumbo v2, "true"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPreferredActivity()Landroid/content/ComponentName;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getVisibleAiTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v3, 0x1

    .line 87
    const-string v4, "PKBD0069"

    .line 88
    .line 89
    if-eqz v2, :cond_2

    .line 90
    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string/jumbo v0, "remove taskId "

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 100
    .line 101
    invoke-static {p0, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    iget p1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 109
    .line 110
    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 114
    .line 115
    if-eqz p0, :cond_6

    .line 116
    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string p1, "2"

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 125
    .line 126
    if-eqz p1, :cond_1

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    goto :goto_0

    .line 133
    :cond_1
    const/4 p1, 0x0

    .line 134
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v4, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :catch_0
    move-exception p0

    .line 146
    new-instance p1, Ljava/lang/RuntimeException;

    .line 147
    .line 148
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_2
    if-eqz v1, :cond_4

    .line 153
    .line 154
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-class v2, Lcom/android/internal/app/ResolverActivity;

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_3

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {p0, v3, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startAIActivity(ILandroid/content/Intent;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_4
    :goto_1
    const/4 p1, 0x2

    .line 176
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startAIActivity(ILandroid/content/Intent;)V

    .line 177
    .line 178
    .line 179
    :goto_2
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    .line 180
    .line 181
    if-eqz p0, :cond_6

    .line 182
    .line 183
    if-eqz v1, :cond_5

    .line 184
    .line 185
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    const-class p1, Lcom/android/internal/app/ResolverActivity;

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    if-nez p0, :cond_5

    .line 200
    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string p1, "1"

    .line 204
    .line 205
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    goto :goto_3

    .line 220
    :cond_5
    const-string p0, "0"

    .line 221
    .line 222
    :goto_3
    invoke-static {v4, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_6
    :goto_4
    return v3

    .line 226
    nop

    .line 227
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method
