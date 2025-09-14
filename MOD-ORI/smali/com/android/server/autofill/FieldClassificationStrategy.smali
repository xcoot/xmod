.class public final Lcom/android/server/autofill/FieldClassificationStrategy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mQueuedCommands:Ljava/util/ArrayList;

.field public mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

.field public mServiceConnection:Lcom/android/server/autofill/FieldClassificationStrategy$1;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    new-instance v10, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;

    .line 3
    .line 4
    move-object v1, v10

    .line 5
    move-object v2, p1

    .line 6
    move-object/from16 v3, p2

    .line 7
    .line 8
    move-object/from16 v4, p3

    .line 9
    .line 10
    move-object/from16 v5, p4

    .line 11
    .line 12
    move-object/from16 v6, p5

    .line 13
    .line 14
    move-object/from16 v7, p6

    .line 15
    .line 16
    move-object/from16 v8, p7

    .line 17
    .line 18
    move-object/from16 v9, p8

    .line 19
    .line 20
    invoke-direct/range {v1 .. v9}, Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;-><init>(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "binding to: "

    .line 24
    .line 25
    .line 26
    const-string/jumbo v2, "exception calling service: "

    .line 27
    .line 28
    .line 29
    iget-object v3, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v3

    .line 32
    :try_start_0
    iget-object v4, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    :try_start_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const-string v1, "FieldClassificationStrategy"

    .line 41
    .line 42
    const-string/jumbo v4, "running command right away"

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto/16 :goto_7

    .line 51
    .line 52
    :catch_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    iget-object v5, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mRemoteService:Landroid/service/autofill/IAutofillFieldClassificationService;

    .line 55
    .line 56
    move-object v6, p1

    .line 57
    move-object/from16 v7, p2

    .line 58
    .line 59
    move-object/from16 v8, p3

    .line 60
    .line 61
    move-object/from16 v9, p4

    .line 62
    .line 63
    move-object/from16 v10, p5

    .line 64
    .line 65
    move-object/from16 v11, p6

    .line 66
    .line 67
    move-object/from16 v12, p7

    .line 68
    .line 69
    move-object/from16 v13, p8

    .line 70
    .line 71
    invoke-interface/range {v5 .. v13}, Landroid/service/autofill/IAutofillFieldClassificationService;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_1
    :try_start_2
    const-string v1, "FieldClassificationStrategy"

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :goto_2
    monitor-exit v3

    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_1
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 96
    .line 97
    if-eqz v2, :cond_2

    .line 98
    .line 99
    const-string v2, "FieldClassificationStrategy"

    .line 100
    .line 101
    const-string/jumbo v4, "service is null; queuing command"

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v2, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 108
    .line 109
    const/4 v4, 0x1

    .line 110
    if-nez v2, :cond_3

    .line 111
    .line 112
    new-instance v2, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .line 116
    .line 117
    iput-object v2, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 118
    .line 119
    :cond_3
    iget-object v2, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mQueuedCommands:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    iget-object v2, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Lcom/android/server/autofill/FieldClassificationStrategy$1;

    .line 125
    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    monitor-exit v3

    .line 129
    goto :goto_6

    .line 130
    :cond_4
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 131
    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    const-string v2, "FieldClassificationStrategy"

    .line 135
    .line 136
    const-string/jumbo v5, "creating connection"

    .line 137
    .line 138
    .line 139
    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    :cond_5
    new-instance v2, Lcom/android/server/autofill/FieldClassificationStrategy$1;

    .line 143
    .line 144
    invoke-direct {v2, p0}, Lcom/android/server/autofill/FieldClassificationStrategy$1;-><init>(Lcom/android/server/autofill/FieldClassificationStrategy;)V

    .line 145
    .line 146
    .line 147
    iput-object v2, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Lcom/android/server/autofill/FieldClassificationStrategy$1;

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 154
    .line 155
    if-eqz v5, :cond_6

    .line 156
    .line 157
    const-string v5, "FieldClassificationStrategy"

    .line 158
    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    :cond_6
    if-eqz v2, :cond_8

    .line 175
    .line 176
    new-instance v1, Landroid/content/Intent;

    .line 177
    .line 178
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 185
    .line 186
    .line 187
    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    :try_start_3
    iget-object v2, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    iget-object v7, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mServiceConnection:Lcom/android/server/autofill/FieldClassificationStrategy$1;

    .line 191
    .line 192
    iget v0, v0, Lcom/android/server/autofill/FieldClassificationStrategy;->mUserId:I

    .line 193
    .line 194
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v2, v1, v7, v4, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 199
    .line 200
    .line 201
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 202
    .line 203
    if-eqz v0, :cond_7

    .line 204
    .line 205
    const-string v0, "FieldClassificationStrategy"

    .line 206
    .line 207
    const-string/jumbo v1, "bound"

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :catchall_1
    move-exception v0

    .line 215
    goto :goto_4

    .line 216
    :cond_7
    :goto_3
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :goto_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :cond_8
    :goto_5
    monitor-exit v3

    .line 225
    :goto_6
    return-void

    .line 226
    :goto_7
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    throw v0
.end method

.method public final getAvailableAlgorithms()[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :try_start_0
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v1, "android.autofill.field_classification.available_algorithms"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Error getting application resources for "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "FieldClassificationStrategy"

    .line 50
    .line 51
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    return-object v1
.end method

.method public final getDefaultAlgorithm()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :try_start_0
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 22
    .line 23
    const-string v1, "android.autofill.field_classification.default_algorithm"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Error getting application resources for "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "FieldClassificationStrategy"

    .line 50
    .line 51
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    return-object v1
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/autofill/FieldClassificationStrategy;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    .line 10
    .line 11
    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "android.permission.BIND_AUTOFILL_FIELD_CLASSIFICATION_SERVICE"

    .line 19
    .line 20
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const-string v2, "FieldClassificationStrategy"

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " does not require permission android.permission.BIND_AUTOFILL_FIELD_CLASSIFICATION_SERVICE"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_1
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v0, "getServiceComponentName(): "

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_2
    return-object v1
.end method

.method public final getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "FieldClassificationStrategy"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "no external services package!"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_0
    const-string v3, "android.service.autofill.AutofillFieldClassificationService"

    .line 24
    .line 25
    invoke-static {v3, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object p0, p0, Lcom/android/server/autofill/FieldClassificationStrategy;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/16 v3, 0x84

    .line 36
    .line 37
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 44
    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object p0

    .line 49
    :cond_2
    :goto_0
    const-string p0, "No valid components found."

    .line 50
    .line 51
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-object v1
.end method
