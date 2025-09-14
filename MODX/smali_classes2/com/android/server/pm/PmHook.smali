.class public abstract Lcom/android/server/pm/PmHook;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager; = null

.field public static mSystemReady:Z = false


# direct methods
.method public static final auditLogInstallFail(ILjava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    const-string v0, "Install application "

    .line 6
    .line 7
    const-string v1, " failed"

    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    :goto_0
    move-object v6, p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :goto_1
    const/4 v2, 0x0

    .line 22
    const-string v4, "PackageManagerService"

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    const/4 v1, 0x5

    .line 26
    move v7, p0

    .line 27
    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static final enableDisableApplicationLog(IILjava/lang/String;Ljava/lang/String;)V
    .locals 20

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    const-string v5, " has been enabled."

    .line 12
    .line 13
    const-string v6, " has been disabled."

    .line 14
    .line 15
    const/4 v7, 0x3

    .line 16
    const/4 v8, 0x2

    .line 17
    const/4 v9, 0x1

    .line 18
    if-nez v2, :cond_3

    .line 19
    .line 20
    const-string v2, "Application "

    .line 21
    .line 22
    if-eq v0, v9, :cond_2

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eq v0, v8, :cond_1

    .line 28
    .line 29
    if-ne v0, v7, :cond_7

    .line 30
    .line 31
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 32
    .line 33
    .line 34
    move-result v13

    .line 35
    const-string v14, "PackageManagerService"

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v15

    .line 52
    const-string v16, ""

    .line 53
    .line 54
    const/4 v10, 0x5

    .line 55
    const/4 v11, 0x5

    .line 56
    const/4 v12, 0x1

    .line 57
    move/from16 v17, p1

    .line 58
    .line 59
    invoke-static/range {v10 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    const-string v9, "PackageManagerService"

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    const-string v11, ""

    .line 89
    .line 90
    const/4 v5, 0x5

    .line 91
    const/4 v6, 0x5

    .line 92
    const/4 v7, 0x1

    .line 93
    move/from16 v12, p1

    .line 94
    .line 95
    invoke-static/range {v5 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    const-string v10, "/"

    .line 100
    .line 101
    const-string v11, "Component "

    .line 102
    .line 103
    if-eq v0, v9, :cond_6

    .line 104
    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    if-eq v0, v8, :cond_5

    .line 109
    .line 110
    if-ne v0, v7, :cond_7

    .line 111
    .line 112
    :cond_5
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    const-string v16, "PackageManagerService"

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v17

    .line 139
    const-string v18, ""

    .line 140
    .line 141
    const/4 v12, 0x5

    .line 142
    const/4 v13, 0x5

    .line 143
    const/4 v14, 0x1

    .line 144
    move/from16 v19, p1

    .line 145
    .line 146
    invoke-static/range {v12 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    const-string v9, "PackageManagerService"

    .line 155
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    const-string v11, ""

    .line 178
    .line 179
    const/4 v5, 0x5

    .line 180
    const/4 v6, 0x5

    .line 181
    const/4 v7, 0x1

    .line 182
    move/from16 v12, p1

    .line 183
    .line 184
    invoke-static/range {v5 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .line 186
    .line 187
    :cond_7
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 192
    .line 193
    .line 194
    throw v0
.end method

.method public static isUpdateAllowedByMdm(Landroid/content/pm/PackageManager$ComponentEnabledSetting;ILandroid/content/Context;)Z
    .locals 11

    .line 1
    const-string v0, "RemoteException: "

    .line 2
    .line 3
    const-string/jumbo v1, "try to enable admin for CL container: "

    .line 4
    .line 5
    .line 6
    const-string v2, "This component can not be enabled due to EDM policy. componentName = "

    .line 7
    .line 8
    const-string v3, "This app can not be enabled due to EDM policy. packageName = "

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getEnabledState()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const-string v6, "application_policy"

    .line 19
    .line 20
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-static {v6}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const/4 v7, 0x1

    .line 29
    const/4 v8, 0x0

    .line 30
    const-string v9, "PM_HOOK"

    .line 31
    .line 32
    if-nez v6, :cond_0

    .line 33
    .line 34
    :try_start_0
    const-string p0, "ApplicationPolicy is null"

    .line 35
    .line 36
    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    if-eq v5, v7, :cond_1

    .line 41
    .line 42
    if-nez v5, :cond_3

    .line 43
    .line 44
    :cond_1
    invoke-interface {v6, v4, v8, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-nez v10, :cond_2

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return v8

    .line 66
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->isComponent()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->getComponentName()Landroid/content/ComponentName;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 77
    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    invoke-direct {v3, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v6, v3, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_3

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    return v8

    .line 107
    :catch_0
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_6

    .line 116
    .line 117
    if-ne v5, v7, :cond_6

    .line 118
    .line 119
    new-instance p0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 120
    .line 121
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    if-eqz p0, :cond_6

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-eqz p0, :cond_6

    .line 143
    .line 144
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-eq p0, p1, :cond_6

    .line 149
    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    .line 167
    .line 168
    sget-object p0, Lcom/android/server/pm/PmHook;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 169
    .line 170
    if-nez p0, :cond_4

    .line 171
    .line 172
    const-string p0, "device_policy"

    .line 173
    .line 174
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    sput-object p0, Lcom/android/server/pm/PmHook;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 183
    .line 184
    :cond_4
    sget-object p0, Lcom/android/server/pm/PmHook;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .line 186
    if-eqz p0, :cond_5

    .line 187
    .line 188
    :try_start_2
    invoke-interface {p0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-eqz p0, :cond_5

    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    if-eqz p1, :cond_5

    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-eqz p0, :cond_5

    .line 209
    .line 210
    const-string p0, "Can enable admin inside container to support AfW feature"

    .line 211
    .line 212
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :catchall_0
    move-exception p0

    .line 217
    goto :goto_2

    .line 218
    :catch_1
    move-exception p0

    .line 219
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    :cond_5
    const-string p0, "Cannot enable this package inside the container."

    .line 239
    .line 240
    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    .line 245
    .line 246
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    .line 248
    .line 249
    return v8

    .line 250
    :cond_6
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    .line 252
    .line 253
    return v7

    .line 254
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    .line 256
    .line 257
    throw p0
.end method

.method public static final uninstallLog(ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    const-string v0, "Uninstall application "

    .line 6
    .line 7
    const-string v1, " failed"

    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    const-string v6, ""

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    const/4 v1, 0x5

    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v4, "PackageManagerService"

    .line 19
    .line 20
    move v7, p0

    .line 21
    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
