.class public final Lcom/android/server/wm/PersonaActivityHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastPIPModeActivityUserId:I

.field public mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mLastResumedSFActivity:Lcom/android/server/wm/ActivityRecord;

.field public mLockSecureFolderExceptionalList:Ljava/util/List;

.field public final mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

.field public mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public static -$$Nest$mcheckAndLockSecureFolder(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 13
    .line 14
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 21
    .line 22
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_1
    if-nez p1, :cond_2

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 33
    .line 34
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 35
    .line 36
    if-eq v0, v1, :cond_3

    .line 37
    .line 38
    const-string p0, "PersonaActivityHelper"

    .line 39
    .line 40
    const-string p1, "Activity not in resumed state, do not run immediate lock"

    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lez v0, :cond_7

    .line 54
    .line 55
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 56
    .line 57
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_7

    .line 62
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "knox_screen_off_timeout"

    .line 70
    .line 71
    const/4 v3, -0x1

    .line 72
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 73
    .line 74
    .line 75
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    const/4 v2, -0x2

    .line 77
    if-ne v1, v2, :cond_8

    .line 78
    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    const-string v2, "keyguard"

    .line 82
    .line 83
    if-nez v1, :cond_4

    .line 84
    .line 85
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/app/KeyguardManager;

    .line 92
    .line 93
    iput-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 94
    .line 95
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 96
    .line 97
    if-eqz v1, :cond_6

    .line 98
    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Landroid/app/KeyguardManager;

    .line 108
    .line 109
    iput-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 110
    .line 111
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 114
    .line 115
    .line 116
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    if-eqz v0, :cond_6

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .line 123
    .line 124
    :cond_6
    const-string/jumbo v0, "persist.sys.knox.secure_folder_state_available"

    .line 125
    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_8

    .line 133
    .line 134
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Lcom/android/server/wm/PersonaActivityHelper;->isLockSecureFolderExceptionalCase(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_7

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catch_1
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    .line 149
    .line 150
    const/16 v0, 0x25b

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    new-instance v1, Landroid/os/Bundle;

    .line 160
    .line 161
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    const-string v3, "isHomeActivity"

    .line 169
    .line 170
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    .line 172
    .line 173
    const-string v2, "componentName"

    .line 174
    .line 175
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    .line 182
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 183
    .line 184
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    .line 188
    .line 189
    :cond_8
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastReceivedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLastResumedSFActivity:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    .line 29
    .line 30
    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;-><init>(Lcom/android/server/wm/PersonaActivityHelper;Landroid/os/Looper;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaActivityHandler:Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;

    .line 34
    .line 35
    new-instance p2, Lcom/android/server/wm/PersonaActivityHelper$1;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Lcom/android/server/wm/PersonaActivityHelper$1;-><init>(Lcom/android/server/wm/PersonaActivityHelper;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 46
    .line 47
    new-instance p2, Lcom/android/server/wm/PersonaActivityHelper$2;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Lcom/android/server/wm/PersonaActivityHelper$2;-><init>(Lcom/android/server/wm/PersonaActivityHelper;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final checkKnoxFeatureEnabled()Z
    .locals 5

    .line 1
    const-string/jumbo v0, "persist.sys.knox.userinfo"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    move v0, v1

    .line 22
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 23
    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    const-string/jumbo v3, "persona"

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/server/pm/PersonaManagerService;

    .line 40
    .line 41
    iput-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 42
    .line 43
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 44
    .line 45
    iput-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 46
    .line 47
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 48
    .line 49
    if-eqz p0, :cond_4

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    return v2

    .line 54
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 59
    .line 60
    .line 61
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-eqz p0, :cond_5

    .line 63
    .line 64
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    return v2

    .line 68
    :cond_5
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_4

    .line 74
    :catch_0
    move-exception p0

    .line 75
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_3
    return v1

    .line 80
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public final getCurrentScreenUserId(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "version"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "2.0"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_5

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string/jumbo v1, "persona"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-string/jumbo v1, "screenshot: check focused user : "

    .line 50
    .line 51
    .line 52
    const-string v2, "PersonaActivityHelper"

    .line 53
    .line 54
    invoke-static {v0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 66
    .line 67
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    :cond_2
    new-instance p0, Landroid/os/UserHandle;

    .line 88
    .line 89
    invoke-direct {p0, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 90
    .line 91
    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo v0, "screenshot: getCurrentScreenUserId:premium = "

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_3
    if-eqz p0, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-eqz p0, :cond_4

    .line 118
    .line 119
    new-instance p0, Landroid/os/UserHandle;

    .line 120
    .line 121
    invoke-direct {p0, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 122
    .line 123
    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string/jumbo v0, "screenshot: App Separation user type. ID = "

    .line 127
    .line 128
    .line 129
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    return-object p0

    .line 143
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string/jumbo v0, "screenshot: getCurrentScreenUserId = "

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_5
    return-object p1
.end method

.method public final isKnoxWindowVisibleLocked(II)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    sub-int/2addr v2, v3

    .line 29
    :goto_0
    if-ltz v2, :cond_2

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    new-instance v5, Lcom/android/server/wm/PersonaActivityHelper$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    const-class v6, Lcom/android/server/wm/Task;

    .line 47
    .line 48
    invoke-static {v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    move-object v7, v9

    .line 63
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/DisplayArea;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v5}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 72
    .line 73
    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    return v3

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 88
    .line 89
    .line 90
    return v1

    .line 91
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_3
    :goto_2
    return v1
.end method

.method public final isLockSecureFolderExceptionalCase(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 12
    .line 13
    const-string v2, "com.android.systemui/.keyguard.WorkLockActivity"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 19
    .line 20
    const-string v2, "android/com.android.internal.app.ForwardIntentToManagedProfile"

    .line 21
    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 28
    .line 29
    const-string v2, "android/com.android.internal.app.ForwardIntentToManagedProfile4"

    .line 30
    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 37
    .line 38
    const-string v2, "com.android.intentresolver/.ChooserActivity"

    .line 39
    .line 40
    check-cast v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 46
    .line 47
    const-string v2, "com.android.intentresolver/.ChooserActivityLauncher"

    .line 48
    .line 49
    check-cast v0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 55
    .line 56
    const-string v2, "com.samsung.android.allshare.service.fileshare/.client.DeviceSelectActivity"

    .line 57
    .line 58
    check-cast v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 64
    .line 65
    const-string v2, "com.sec.android.app.myfiles/.external.ui.PermissionActivity"

    .line 66
    .line 67
    check-cast v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 73
    .line 74
    const-string v2, "com.google.android.permissioncontroller/com.android.permissioncontroller.permission.ui.GrantPermissionsActivity"

    .line 75
    .line 76
    check-cast v0, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 82
    .line 83
    const-string v2, "com.google.android.permissioncontroller/com.android.permissioncontroller.permission.ui.ManagePermissionsActivity"

    .line 84
    .line 85
    check-cast v0, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 91
    .line 92
    const-string v2, "com.google.android.permissioncontroller/com.android.permissioncontroller.role.ui.RequestRoleActivity"

    .line 93
    .line 94
    check-cast v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 100
    .line 101
    const-string v2, "com.samsung.android.messaging/.ui.view.main.WithActivity"

    .line 102
    .line 103
    check-cast v0, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 109
    .line 110
    const-string v2, "com.samsung.android.messaging/.ui.view.recipientspicker.PickerActivity"

    .line 111
    .line 112
    check-cast v0, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 118
    .line 119
    const-string v2, "com.samsung.android.messaging/.ui.view.firstlaunch.GoogleFirstLaunchActivity"

    .line 120
    .line 121
    check-cast v0, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 127
    .line 128
    const-string v2, "com.google.android.gms/.constellation.ui.ApiConsentActivity"

    .line 129
    .line 130
    check-cast v0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 136
    .line 137
    const-string v2, "com.samsung.android.messaging/com.android.mms.ui.ConversationComposer"

    .line 138
    .line 139
    check-cast v0, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 145
    .line 146
    const-string v2, "com.samsung.android.messaging/.ui.view.permission.CheckDefaultSmsAppsActivity"

    .line 147
    .line 148
    check-cast v0, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 154
    .line 155
    const-string v2, "com.samsung.android.biometrics.app.setting/.fingerprint.enroll.FingerprintEnrollActivity"

    .line 156
    .line 157
    check-cast v0, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 163
    .line 164
    const-string v2, "com.samsung.android.settings.notification.SecRedactionInterstitial"

    .line 165
    .line 166
    check-cast v0, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 172
    .line 173
    const-string v2, "com.wssyncmldm/com.idm.fotaagent.enabler.ui.downloadconfirm.DownloadConfirmActivity"

    .line 174
    .line 175
    check-cast v0, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 181
    .line 182
    const-string v2, "com.sec.android.app.camera/.QrScannerActivity"

    .line 183
    .line 184
    check-cast v0, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 190
    .line 191
    const-string v2, "com.sec.android.app.camera/.QrScanner"

    .line 192
    .line 193
    check-cast v0, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 199
    .line 200
    const-string v2, "desktopmode"

    .line 201
    .line 202
    if-nez v0, :cond_0

    .line 203
    .line 204
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 211
    .line 212
    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 213
    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 215
    .line 216
    if-eqz v0, :cond_3

    .line 217
    .line 218
    if-nez v0, :cond_1

    .line 219
    .line 220
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 227
    .line 228
    iput-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 229
    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    const/4 v2, 0x4

    .line 241
    const/4 v3, 0x3

    .line 242
    if-eq v0, v2, :cond_2

    .line 243
    .line 244
    if-ne v0, v3, :cond_3

    .line 245
    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    .line 247
    .line 248
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v2, "dexonpc_connection_state"

    .line 253
    .line 254
    invoke-static {v0, v2, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-ne v0, v3, :cond_3

    .line 259
    .line 260
    const-string v0, "PersonaActivityHelper"

    .line 261
    .line 262
    const-string v2, "DeX on PC is running"

    .line 263
    .line 264
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 268
    .line 269
    const-string v2, "com.samsung.knox.securefolder/.presentation.switcher.view.SecureFolderShortcutActivity"

    .line 270
    .line 271
    check-cast v0, Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mLockSecureFolderExceptionalList:Ljava/util/List;

    .line 277
    .line 278
    check-cast p0, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result p0

    .line 284
    if-nez p0, :cond_4

    .line 285
    .line 286
    const-string p0, "com.android.settings/"

    .line 287
    .line 288
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result p0

    .line 292
    if-eqz p0, :cond_5

    .line 293
    .line 294
    :cond_4
    const/4 v1, 0x1

    .line 295
    :cond_5
    return v1
.end method

.method public final isQuickSwitchExceptionalCase(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7
    .line 8
    .line 9
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    .line 21
    .line 22
    return v0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    :try_start_2
    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 38
    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    const-string v2, "android.intent.extra.USER_ID"

    .line 42
    .line 43
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 55
    .line 56
    .line 57
    return p1

    .line 58
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :goto_0
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 66
    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 67
    .line 68
    .line 69
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 70
    :goto_1
    const-string p1, "PersonaActivityHelper"

    .line 71
    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Exception :: "

    .line 75
    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v1, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    return v0
.end method

.method public final notifyActivityResumedLocked(ZLcom/android/server/wm/ActivityRecord;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 16
    .line 17
    iget v2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 18
    .line 19
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 40
    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-boolean p1, p2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    iget-boolean p1, p2, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    :cond_1
    move p1, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    move p1, v1

    .line 56
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_5

    .line 61
    .line 62
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    const-string v6, "com.samsung.android.incallui"

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_3

    .line 71
    .line 72
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 73
    .line 74
    const-string v6, "com.android.server.telecom"

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_3

    .line 81
    .line 82
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 83
    .line 84
    const-string v6, "com.android.calendar/.alerts.PopUpActivity"

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-nez v5, :cond_3

    .line 91
    .line 92
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 93
    .line 94
    const-string v6, "com.samsung.android.calendar/com.samsung.android.app.calendarnotification.AlertPopupActivity"

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_3

    .line 101
    .line 102
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 103
    .line 104
    const-string v6, "com.microsoft.teams/com.microsoft.skype.teams.views.activities.PreCallActivity"

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_3

    .line 111
    .line 112
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 113
    .line 114
    const-string v6, "com.microsoft.teams/com.microsoft.skype.teams.views.activities.InCallActivity"

    .line 115
    .line 116
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_4

    .line 121
    .line 122
    :cond_3
    move v1, v4

    .line 123
    :cond_4
    move v5, v1

    .line 124
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 125
    .line 126
    .line 127
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 128
    .line 129
    if-ne v0, p2, :cond_7

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 132
    .line 133
    if-eqz v5, :cond_6

    .line 134
    .line 135
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    new-instance p2, Lcom/android/server/knox/KnoxAnalyticsContainer$1;

    .line 145
    .line 146
    invoke-direct {p2, p0, v2, v3, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer$1;-><init>(Lcom/android/server/knox/KnoxAnalyticsContainer;ILandroid/content/ComponentName;Z)V

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    .line 150
    .line 151
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    .line 153
    .line 154
    :cond_7
    return-void
.end method
