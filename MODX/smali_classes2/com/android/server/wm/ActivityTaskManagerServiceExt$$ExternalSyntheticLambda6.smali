.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$LazyHolder;->sInstance:Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 15
    .line 16
    iget-object v3, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 17
    .line 18
    iget-object v4, v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v4

    .line 21
    :try_start_0
    iget-boolean v5, v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mStarted:Z

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    iget-object v2, v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 28
    .line 29
    const-string v3, "The controller has already been started."

    .line 30
    .line 31
    const/4 v5, 0x5

    .line 32
    invoke-virtual {v2, v5, v3, v7}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    monitor-exit v4

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_0
    iput-object v1, v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    iput-object p0, v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    iput-object v3, v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 45
    .line 46
    new-instance v5, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 47
    .line 48
    invoke-direct {v5, v1, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;-><init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;)V

    .line 49
    .line 50
    .line 51
    iput-object v5, v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 52
    .line 53
    new-instance v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    .line 54
    .line 55
    invoke-direct {v3, v1, p0, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;)V

    .line 56
    .line 57
    .line 58
    iput-object v3, v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

    .line 59
    .line 60
    new-instance v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    invoke-direct {v3, v2, v5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    iput-boolean v6, v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mStarted:Z

    .line 70
    .line 71
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    iget-object v2, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 73
    .line 74
    iget-object v3, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    .line 75
    .line 76
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    new-instance v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;

    .line 80
    .line 81
    invoke-direct {v4, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/corescpm/ScpmController;)V

    .line 82
    .line 83
    .line 84
    iget-object v3, v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter v3

    .line 87
    :try_start_1
    iput-object v4, v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 88
    .line 89
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 90
    iget-object v2, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mScpmController:Lcom/samsung/android/server/corescpm/ScpmController;

    .line 91
    .line 92
    iget-object v3, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->getGroupNames()Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    iget-object v4, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mPackageFeatureController:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;

    .line 99
    .line 100
    iget-object v5, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 101
    .line 102
    check-cast v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 103
    .line 104
    iget-object v8, v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLock:Ljava/lang/Object;

    .line 105
    .line 106
    monitor-enter v8

    .line 107
    :try_start_2
    iget-boolean v9, v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mStarted:Z

    .line 108
    .line 109
    if-eqz v9, :cond_1

    .line 110
    .line 111
    monitor-exit v8

    .line 112
    goto :goto_1

    .line 113
    :catchall_1
    move-exception p0

    .line 114
    goto :goto_5

    .line 115
    :cond_1
    iput-object v1, v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    iput-object p0, v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    .line 118
    .line 119
    iput-object v4, v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mCallback:Ljava/util/function/Consumer;

    .line 120
    .line 121
    iput-object v5, v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 122
    .line 123
    iput-boolean v6, v2, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mStarted:Z

    .line 124
    .line 125
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    new-instance v4, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda4;

    .line 127
    .line 128
    invoke-direct {v4, v2, v3, v1, p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;Ljava/util/Set;Landroid/content/Context;Landroid/os/Handler;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    .line 133
    .line 134
    :goto_1
    monitor-enter v0

    .line 135
    :try_start_3
    iget-object p0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    .line 136
    .line 137
    if-nez p0, :cond_2

    .line 138
    .line 139
    const-string p0, "PackageFeature"

    .line 140
    .line 141
    const-string v1, "The package feature manager service has already been started."

    .line 142
    .line 143
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    monitor-exit v0

    .line 147
    goto :goto_2

    .line 148
    :catchall_2
    move-exception p0

    .line 149
    goto :goto_4

    .line 150
    :cond_2
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda2;

    .line 151
    .line 152
    invoke-direct {v1, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;)V

    .line 153
    .line 154
    .line 155
    check-cast p0, Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 158
    .line 159
    .line 160
    iget-object p0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    .line 161
    .line 162
    check-cast p0, Ljava/util/HashMap;

    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 165
    .line 166
    .line 167
    iput-object v7, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService;->mTmpPackageFeatureCallbacks:Ljava/util/Map;

    .line 168
    .line 169
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 170
    :goto_2
    sget-object p0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    .line 171
    .line 172
    check-cast p0, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_3

    .line 183
    .line 184
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;

    .line 189
    .line 190
    invoke-interface {v0}, Lcom/android/server/wm/PackagesChange$PackagesUserChangeCallback;->onSystemReady()V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_3
    return-void

    .line 195
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 196
    throw p0

    .line 197
    :goto_5
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 198
    throw p0

    .line 199
    :catchall_3
    move-exception p0

    .line 200
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 201
    throw p0

    .line 202
    :goto_6
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    throw p0
.end method
