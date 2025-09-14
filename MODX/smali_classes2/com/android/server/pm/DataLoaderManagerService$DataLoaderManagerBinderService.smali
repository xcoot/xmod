.class public final Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;
.super Landroid/content/pm/IDataLoaderManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/DataLoaderManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DataLoaderManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/IDataLoaderManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    new-instance v0, Landroid/content/ComponentName;

    .line 24
    .line 25
    iget-object v1, p2, Landroid/content/pm/DataLoaderParamsParcel;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p2, p2, Landroid/content/pm/DataLoaderParamsParcel;->className:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/android/server/pm/DataLoaderManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string v1, "DataLoaderManager"

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    const-string p2, "PackageManager is not available."

    .line 47
    .line 48
    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    move-object v8, v3

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .line 54
    .line 55
    const-string v5, "android.intent.action.LOAD_DATA"

    .line 56
    .line 57
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {p2, v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-lez v4, :cond_3

    .line 85
    .line 86
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 91
    .line 92
    new-instance v3, Landroid/content/ComponentName;

    .line 93
    .line 94
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 95
    .line 96
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 97
    .line 98
    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 99
    .line 100
    invoke-direct {v3, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    const-string p2, "Didn\'t find any matching data loader service provider."

    .line 105
    .line 106
    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v4, "Failed to find data loader service provider in "

    .line 113
    .line 114
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :goto_2
    if-nez v8, :cond_5

    .line 129
    .line 130
    const-string p0, "DataLoaderManager"

    .line 131
    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string p3, "Invalid component: "

    .line 135
    .line 136
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p3, " for ID="

    .line 143
    .line 144
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    return v2

    .line 158
    :cond_5
    new-instance v7, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    .line 159
    .line 160
    iget-object p2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 161
    .line 162
    invoke-direct {v7, p2, p1, p5}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;-><init>(Lcom/android/server/pm/DataLoaderManagerService;ILandroid/content/pm/IDataLoaderStatusListener;)V

    .line 163
    .line 164
    .line 165
    new-instance v6, Landroid/content/Intent;

    .line 166
    .line 167
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 171
    .line 172
    .line 173
    iget-object p2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 174
    .line 175
    iget-object p2, p2, Lcom/android/server/pm/DataLoaderManagerService;->mHandler:Landroid/os/Handler;

    .line 176
    .line 177
    new-instance p5, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    move-object v4, p5

    .line 180
    move-object v5, p0

    .line 181
    move v9, p1

    .line 182
    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;Landroid/content/Intent;Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;Landroid/content/ComponentName;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p5, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    return p0

    .line 190
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    throw p0
.end method

.method public final getDataLoader(I)Landroid/content/pm/IDataLoader;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final unbindFromDataLoader(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderManagerBinderService;->this$0:Lcom/android/server/pm/DataLoaderManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/DataLoaderManagerService;->mServiceConnections:Landroid/util/SparseArray;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    :try_start_1
    iget v2, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mId:I

    .line 28
    .line 29
    invoke-interface {p1, v2}, Landroid/content/pm/IDataLoader;->destroy(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :try_start_2
    iput-object v1, p0, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->mDataLoader:Landroid/content/pm/IDataLoader;

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/DataLoaderManagerService$DataLoaderServiceConnection;->unbind()Z

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p0
.end method
