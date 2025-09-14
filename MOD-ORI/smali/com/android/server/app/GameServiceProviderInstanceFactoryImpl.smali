.class public final Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)Lcom/android/server/app/GameServiceProviderInstanceImpl;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    .line 6
    .line 7
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    new-instance v13, Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, v0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v5, Lcom/android/server/app/GameTaskInfoProvider;

    .line 20
    .line 21
    new-instance v7, Lcom/android/server/app/GameClassifierImpl;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-direct {v7, v4}, Lcom/android/server/app/GameClassifierImpl;-><init>(Landroid/content/pm/PackageManager;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v2, v6, v7}, Lcom/android/server/app/GameTaskInfoProvider;-><init>(Landroid/os/UserHandle;Landroid/app/IActivityTaskManager;Lcom/android/server/app/GameClassifierImpl;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-class v7, Landroid/app/ActivityManagerInternal;

    .line 38
    .line 39
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Landroid/app/ActivityManagerInternal;

    .line 44
    .line 45
    const-string/jumbo v8, "window"

    .line 46
    .line 47
    .line 48
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    check-cast v8, Lcom/android/server/wm/WindowManagerService;

    .line 53
    .line 54
    const-class v9, Lcom/android/server/wm/WindowManagerInternal;

    .line 55
    .line 56
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    check-cast v9, Lcom/android/server/wm/WindowManagerInternal;

    .line 61
    .line 62
    const-class v10, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 63
    .line 64
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 69
    .line 70
    new-instance v11, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector;

    .line 71
    .line 72
    iget-object v15, v0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    new-instance v12, Landroid/content/Intent;

    .line 75
    .line 76
    const-string v14, "android.service.games.action.GAME_SERVICE"

    .line 77
    .line 78
    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v14, v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameServiceComponentName:Landroid/content/ComponentName;

    .line 82
    .line 83
    invoke-virtual {v12, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object v16

    .line 87
    iget-object v12, v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    .line 88
    .line 89
    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    .line 90
    .line 91
    .line 92
    move-result v18

    .line 93
    new-instance v12, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector$$ExternalSyntheticLambda0;

    .line 94
    .line 95
    const/4 v14, 0x0

    .line 96
    invoke-direct {v12, v14}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector$$ExternalSyntheticLambda0;-><init>(I)V

    .line 97
    .line 98
    .line 99
    const/high16 v17, 0x100000

    .line 100
    .line 101
    move-object v14, v11

    .line 102
    move-object/from16 v19, v12

    .line 103
    .line 104
    invoke-direct/range {v14 .. v19}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 105
    .line 106
    .line 107
    new-instance v12, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameSessionServiceConnector;

    .line 108
    .line 109
    iget-object v14, v0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    new-instance v15, Landroid/content/Intent;

    .line 112
    .line 113
    move-object/from16 v16, v11

    .line 114
    .line 115
    const-string v11, "android.service.games.action.GAME_SESSION_SERVICE"

    .line 116
    .line 117
    invoke-direct {v15, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v11, v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mGameSessionServiceComponentName:Landroid/content/ComponentName;

    .line 121
    .line 122
    invoke-virtual {v15, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    move-result-object v21

    .line 126
    iget-object v1, v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;->mUserHandle:Landroid/os/UserHandle;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 129
    .line 130
    .line 131
    move-result v23

    .line 132
    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector$$ExternalSyntheticLambda0;

    .line 133
    .line 134
    const/4 v11, 0x1

    .line 135
    invoke-direct {v1, v11}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl$GameServiceConnector$$ExternalSyntheticLambda0;-><init>(I)V

    .line 136
    .line 137
    .line 138
    const/high16 v22, 0x8180000

    .line 139
    .line 140
    move-object/from16 v19, v12

    .line 141
    .line 142
    move-object/from16 v20, v14

    .line 143
    .line 144
    move-object/from16 v24, v1

    .line 145
    .line 146
    invoke-direct/range {v19 .. v24}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 147
    .line 148
    .line 149
    new-instance v14, Lcom/android/internal/util/ScreenshotHelper;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    invoke-direct {v14, v0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    move-object v0, v13

    .line 157
    move-object v1, v2

    .line 158
    move-object v2, v3

    .line 159
    move-object v3, v5

    .line 160
    move-object v5, v7

    .line 161
    move-object v7, v8

    .line 162
    move-object v8, v9

    .line 163
    move-object v9, v10

    .line 164
    move-object/from16 v10, v16

    .line 165
    .line 166
    move-object v11, v12

    .line 167
    move-object v12, v14

    .line 168
    invoke-direct/range {v0 .. v12}, Lcom/android/server/app/GameServiceProviderInstanceImpl;-><init>(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameTaskInfoProvider;Landroid/app/IActivityManager;Landroid/app/ActivityManagerInternal;Landroid/app/IActivityTaskManager;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/infra/ServiceConnector;Lcom/android/internal/util/ScreenshotHelper;)V

    .line 169
    .line 170
    .line 171
    return-object v13
.end method
