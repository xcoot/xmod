.class public abstract Lcom/android/server/infra/AbstractPerUserSystemService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDisabled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

.field public mServiceInfo:Landroid/content/pm/ServiceInfo;

.field public mSetupComplete:Z

.field public final mTag:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    iput p3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string/jumbo p2, "user_setup_complete"

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "1"

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "User: "

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "Service Label: "

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v2, "Target SDK: "

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 50
    .line 51
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 57
    .line 58
    iget-object v3, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v3, "Name resolver: "

    .line 66
    .line 67
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 71
    .line 72
    invoke-virtual {v2, v1, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->dumpShort(ILjava/io/PrintWriter;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v1, "Disabled by UserManager: "

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 87
    .line 88
    const-string v2, "Setup complete: "

    .line 89
    .line 90
    invoke-static {p1, v0, v2, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 99
    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "Service UID: "

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 111
    .line 112
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 113
    .line 114
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final getComponentNameLocked()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceName(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 12

    .line 1
    const-string v0, "Bad ServiceInfo for \'"

    .line 2
    .line 3
    const-string v1, "Reset component for user "

    .line 4
    .line 5
    const-string v2, "Set component for user "

    .line 6
    .line 7
    const-string v3, "Error getting service info for \'"

    .line 8
    .line 9
    const-string v4, "Bad service name: "

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const/4 v7, 0x0

    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    :try_start_1
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    iget v9, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 30
    .line 31
    const-wide/16 v10, 0x0

    .line 32
    .line 33
    invoke-interface {v8, v6, v10, v11, v9}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    iget-object v9, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v10, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :catch_0
    move-exception v4

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception v4

    .line 63
    move-object v6, v7

    .line 64
    :goto_0
    :try_start_3
    iget-object v8, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, "\': "

    .line 75
    .line 76
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .line 88
    .line 89
    move-object v8, v7

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    move-object v6, v7

    .line 92
    move-object v8, v6

    .line 93
    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    .line 94
    .line 95
    :try_start_4
    invoke-virtual {p0, v6}, Lcom/android/server/infra/AbstractPerUserSystemService;->newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 102
    .line 103
    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 104
    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 115
    .line 116
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, " as "

    .line 120
    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v2, " and info as "

    .line 128
    .line 129
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 133
    .line 134
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :catch_2
    move-exception v1

    .line 146
    goto :goto_2

    .line 147
    :cond_2
    iput-object v7, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 148
    .line 149
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 150
    .line 151
    iget-boolean v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 152
    .line 153
    if-eqz v2, :cond_3

    .line 154
    .line 155
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 156
    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 163
    .line 164
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, ":"

    .line 168
    .line 169
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :goto_2
    :try_start_5
    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 184
    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p1, "\': "

    .line 194
    .line 195
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    iput-object v7, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 209
    .line 210
    :cond_3
    :goto_3
    monitor-exit v5

    .line 211
    return-object v6

    .line 212
    :goto_4
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    throw p0
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final getServiceLabelLocked()Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x5

    .line 19
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    return-object p0
.end method

.method public final getServicePackageName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    return-object p0
.end method

.method public final getServiceUidLocked()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 12
    .line 13
    const-string/jumbo v0, "getServiceUidLocked(): no mServiceInfo"

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p0, -0x1

    .line 20
    return p0

    .line 21
    :cond_1
    iget-object p0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 24
    .line 25
    return p0
.end method

.method public handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final isEnabledLocked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public abstract newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
.end method

.method public final removeSelfFromCache()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public updateLocked(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v5, "updateLocked(u="

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v5, "): wasEnabled="

    .line 27
    .line 28
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v5, ", mSetupComplete="

    .line 35
    .line 36
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-boolean v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 40
    .line 41
    const-string v6, ", disabled="

    .line 42
    .line 43
    const-string v7, ", mDisabled="

    .line 44
    .line 45
    invoke-static {v2, v5, v6, p1, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-boolean v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 49
    .line 50
    invoke-static {v4, v2, v5}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string/jumbo v5, "user_setup_complete"

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "1"

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput-boolean v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 75
    .line 76
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 77
    .line 78
    iget-object p1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    iget-boolean p1, p1, Lcom/android/server/infra/ServiceNameBaseResolver;->mIsMultiple:Z

    .line 83
    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    iget-boolean p1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    const-string p1, "Should not end up in updateLocked when isConfiguredInMultipleMode is true"

    .line 91
    .line 92
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eq v0, p0, :cond_3

    .line 104
    .line 105
    const/4 p0, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const/4 p0, 0x0

    .line 108
    :goto_1
    return p0
.end method

.method public final updateServiceInfoListLocked()[Landroid/content/ComponentName;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/infra/ServiceNameBaseResolver;->mIsMultiple:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Landroid/content/ComponentName;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    aput-object p0, v1, v3

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceNameList(I)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_2
    array-length v1, v0

    .line 38
    new-array v1, v1, [Landroid/content/ComponentName;

    .line 39
    .line 40
    :goto_0
    array-length v2, v0

    .line 41
    if-ge v3, v2, :cond_3

    .line 42
    .line 43
    aget-object v2, v0, v3

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    aput-object v2, v1, v3

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    return-object v1
.end method

.method public final updateServiceInfoLocked()Landroid/content/ComponentName;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoListLocked()[Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    aget-object p0, p0, v0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    :goto_1
    return-object p0
.end method
