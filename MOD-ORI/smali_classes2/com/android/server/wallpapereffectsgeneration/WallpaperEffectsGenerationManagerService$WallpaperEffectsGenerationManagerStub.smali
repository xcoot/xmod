.class public final Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;
.super Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final generateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "generateCinematicEffect"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->runForUser(Ljava/lang/String;ZLjava/util/function/Consumer;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance p0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->getTaskId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0, p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p2, p0}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :cond_0
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerServiceShellCommand;-><init>(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final returnCinematicEffectResponse(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "returnCinematicResponse"

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->runForUser(Ljava/lang/String;ZLjava/util/function/Consumer;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final runForUser(Ljava/lang/String;ZLjava/util/function/Consumer;)Z
    .locals 10

    .line 1
    const-string v0, "Permission Denial: cannot call "

    .line 2
    .line 3
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "android.permission.MANAGE_WALLPAPER_EFFECTS_GENERATION"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 65
    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const-string p0, "Permission Denial: Cannot call "

    .line 82
    .line 83
    const-string p2, " from pid="

    .line 84
    .line 85
    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, ", uid="

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string p1, "WallpaperEffectsGenerationManagerService"

    .line 113
    .line 114
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    new-instance p1, Ljava/lang/SecurityException;

    .line 118
    .line 119
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 132
    .line 133
    iget-object v5, v5, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 134
    .line 135
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub;->this$0:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    check-cast p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    .line 143
    .line 144
    if-eqz p0, :cond_4

    .line 145
    .line 146
    if-nez p2, :cond_3

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceUidLocked()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-ne p2, v2, :cond_2

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p1, ", uid["

    .line 164
    .line 165
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string p1, "] doesn\'t match service implementation"

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    const-string p1, "WallpaperEffectsGenerationManagerService"

    .line 181
    .line 182
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    new-instance p1, Ljava/lang/SecurityException;

    .line 186
    .line 187
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :catchall_0
    move-exception p0

    .line 192
    goto :goto_3

    .line 193
    :cond_3
    :goto_1
    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    const/4 p0, 0x1

    .line 197
    goto :goto_2

    .line 198
    :cond_4
    const/4 p0, 0x0

    .line 199
    :goto_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 201
    .line 202
    .line 203
    return p0

    .line 204
    :goto_3
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    :catchall_1
    move-exception p0

    .line 207
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    .line 209
    .line 210
    throw p0
.end method
