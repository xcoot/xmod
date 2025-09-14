.class Lcom/android/server/wm/ActivityStarter$Request;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public activityInfo:Landroid/content/pm/ActivityInfo;

.field public activityOptions:Lcom/android/server/wm/SafeActivityOptions;

.field public allowPendingRemoteAnimationRegistryLookup:Z

.field public caller:Landroid/app/IApplicationThread;

.field public callingFeatureId:Ljava/lang/String;

.field public callingPackage:Ljava/lang/String;

.field public callingPid:I

.field public callingUid:I

.field public componentSpecified:Z

.field public ephemeralIntent:Landroid/content/Intent;

.field public errorCallbackToken:Landroid/os/IBinder;

.field public filterCallingUid:I

.field public forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

.field public freezeScreen:Z

.field public globalConfig:Landroid/content/res/Configuration;

.field public ignoreTargetSecurity:Z

.field public inTask:Lcom/android/server/wm/Task;

.field public inTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public intent:Landroid/content/Intent;

.field public intentGrants:Lcom/android/server/uri/NeededUriGrants;

.field public final logMessage:Ljava/lang/StringBuilder;

.field public originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

.field public outActivity:[Lcom/android/server/wm/ActivityRecord;

.field public profilerInfo:Landroid/app/ProfilerInfo;

.field public realCallingPid:I

.field public realCallingUid:I

.field public reason:Ljava/lang/String;

.field public requestCode:I

.field public resolveInfo:Landroid/content/pm/ResolveInfo;

.field public resolvedType:Ljava/lang/String;

.field public resultTo:Landroid/os/IBinder;

.field public resultWho:Ljava/lang/String;

.field public startFlags:I

.field public userId:I

.field public voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public voiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field public waitResult:Landroid/app/WaitResult;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 11
    .line 12
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->logMessage:Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 26
    .line 27
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 28
    .line 29
    const/4 v2, -0x1

    .line 30
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 35
    .line 36
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 37
    .line 38
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 39
    .line 40
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->inTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 59
    .line 60
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 66
    .line 67
    const/16 v2, -0x2710

    .line 68
    .line 69
    iput v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 70
    .line 71
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 72
    .line 73
    sget-object v2, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    .line 74
    .line 75
    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->forcedBalByPiSender:Landroid/app/BackgroundStartPrivileges;

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->freezeScreen:Z

    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->errorCallbackToken:Landroid/os/IBinder;

    .line 80
    .line 81
    return-void
.end method

.method public final resolveActivity(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 21
    .line 22
    :cond_1
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 23
    .line 24
    if-ltz v0, :cond_2

    .line 25
    .line 26
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 34
    .line 35
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 36
    .line 37
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 38
    .line 39
    iput v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 43
    .line 44
    iput v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 45
    .line 46
    :goto_0
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 55
    .line 56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 57
    .line 58
    .line 59
    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    iget-object v0, v2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 71
    .line 72
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 79
    .line 80
    .line 81
    :cond_5
    move v4, v0

    .line 82
    goto :goto_3

    .line 83
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :goto_3
    new-instance v0, Landroid/content/Intent;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 91
    .line 92
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 96
    .line 97
    new-instance v0, Landroid/content/Intent;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 100
    .line 101
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/4 v1, 0x0

    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    const-string v0, "android.intent.action.VIEW"

    .line 114
    .line 115
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    :cond_6
    const-string v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    .line 136
    .line 137
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_7

    .line 148
    .line 149
    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    .line 150
    .line 151
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_7

    .line 162
    .line 163
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 170
    .line 171
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 176
    .line 177
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 180
    .line 181
    if-eqz v0, :cond_7

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_7

    .line 192
    .line 193
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    :cond_7
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 199
    .line 200
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 201
    .line 202
    iget v8, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 203
    .line 204
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 205
    .line 206
    iget v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 207
    .line 208
    iget v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 209
    .line 210
    invoke-static {v0, v2, v3}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    iget v11, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 215
    .line 216
    const/4 v9, 0x0

    .line 217
    move-object v5, p1

    .line 218
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 223
    .line 224
    if-nez v0, :cond_a

    .line 225
    .line 226
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_9

    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_9

    .line 239
    .line 240
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 241
    .line 242
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 249
    .line 250
    .line 251
    move-result-wide v2

    .line 252
    :try_start_2
    iget v5, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 253
    .line 254
    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    if-eqz v5, :cond_8

    .line 259
    .line 260
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 261
    .line 262
    invoke-virtual {v0, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_8

    .line 267
    .line 268
    iget v5, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 269
    .line 270
    invoke-virtual {v0, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 271
    .line 272
    .line 273
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    if-nez v0, :cond_8

    .line 275
    .line 276
    const/4 v0, 0x1

    .line 277
    goto :goto_4

    .line 278
    :catchall_1
    move-exception p0

    .line 279
    goto :goto_5

    .line 280
    :cond_8
    const/4 v0, 0x0

    .line 281
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    .line 283
    .line 284
    if-eqz v0, :cond_9

    .line 285
    .line 286
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 287
    .line 288
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 289
    .line 290
    iget v8, p0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 291
    .line 292
    iget v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 293
    .line 294
    iget v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 295
    .line 296
    iget v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 297
    .line 298
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    .line 299
    .line 300
    .line 301
    move-result v10

    .line 302
    iget v11, p0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 303
    .line 304
    const/high16 v9, 0xc0000

    .line 305
    .line 306
    move-object v5, p1

    .line 307
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    goto :goto_6

    .line 312
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    .line 314
    .line 315
    throw p0

    .line 316
    :cond_9
    :goto_6
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 317
    .line 318
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 319
    .line 320
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 321
    .line 322
    iget v2, p0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 323
    .line 324
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 325
    .line 326
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 331
    .line 332
    if-eqz v0, :cond_c

    .line 333
    .line 334
    invoke-static {}, Landroid/security/Flags;->contentUriPermissionApis()Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_b

    .line 339
    .line 340
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 341
    .line 342
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 343
    .line 344
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 345
    .line 346
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 347
    .line 348
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 349
    .line 350
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 351
    .line 352
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 353
    .line 354
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 359
    .line 360
    iget v0, v0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    .line 361
    .line 362
    move-object v2, p1

    .line 363
    check-cast v2, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 364
    .line 365
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 374
    .line 375
    goto :goto_7

    .line 376
    :cond_b
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 377
    .line 378
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 379
    .line 380
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 381
    .line 382
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 383
    .line 384
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 385
    .line 386
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 387
    .line 388
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 389
    .line 390
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    move-object v2, p1

    .line 395
    check-cast v2, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 396
    .line 397
    const/4 v7, 0x0

    .line 398
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$Request;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 403
    .line 404
    :cond_c
    :goto_7
    return-void
.end method
