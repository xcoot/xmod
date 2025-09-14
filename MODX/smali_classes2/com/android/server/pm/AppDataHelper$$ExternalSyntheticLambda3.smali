.class public final synthetic Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppDataHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/os/CreateAppDataArgs;

.field public final synthetic f$6:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$7:Lcom/android/server/pm/pkg/AndroidPackage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/AppDataHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$5:Landroid/os/CreateAppDataArgs;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$6:Lcom/android/server/pm/PackageSetting;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$7:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/AppDataHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$3:I

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$4:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$5:Landroid/os/CreateAppDataArgs;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$6:Lcom/android/server/pm/PackageSetting;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;->f$7:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 16
    .line 17
    check-cast p1, Landroid/os/CreateAppDataResult;

    .line 18
    .line 19
    check-cast p2, Ljava/lang/Throwable;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-wide/16 v7, -0x1

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    new-instance v9, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v10, "Failed to create app data for "

    .line 31
    .line 32
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v10, ", but trying to recover: "

    .line 39
    .line 40
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const/4 v9, 0x5

    .line 51
    invoke-static {v9, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(IILjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p2, 0x3

    .line 58
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    if-nez v2, :cond_0

    .line 67
    .line 68
    new-instance v1, Landroid/os/CreateAppDataResult;

    .line 69
    .line 70
    invoke-direct {v1}, Landroid/os/CreateAppDataResult;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-wide v7, v1, Landroid/os/CreateAppDataResult;->ceDataInode:J

    .line 74
    .line 75
    iput-wide v7, v1, Landroid/os/CreateAppDataResult;->deDataInode:J

    .line 76
    .line 77
    iput v10, v1, Landroid/os/CreateAppDataResult;->exceptionCode:I

    .line 78
    .line 79
    iput-object v9, v1, Landroid/os/CreateAppDataResult;->exceptionMessage:Ljava/lang/String;

    .line 80
    .line 81
    move-object p1, v1

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    iput v10, v5, Landroid/os/CreateAppDataArgs;->previousAppId:I
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    .line 85
    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 86
    .line 87
    invoke-interface {v1, v5}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    .line 88
    .line 89
    .line 90
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :goto_0
    :try_start_2
    const-string v1, "Recovery succeeded!"

    .line 92
    .line 93
    invoke-static {p2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    .line 98
    invoke-static {v1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 99
    .line 100
    .line 101
    throw v9
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    :catch_1
    const-string v1, "Recovery failed!"

    .line 103
    .line 104
    invoke-static {p2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    :goto_1
    iget-wide v1, p1, Landroid/os/CreateAppDataResult;->ceDataInode:J

    .line 108
    .line 109
    iget-wide p1, p1, Landroid/os/CreateAppDataResult;->deDataInode:J

    .line 110
    .line 111
    and-int/lit8 v5, v4, 0x2

    .line 112
    .line 113
    if-eqz v5, :cond_2

    .line 114
    .line 115
    cmp-long v5, v1, v7

    .line 116
    .line 117
    if-eqz v5, :cond_2

    .line 118
    .line 119
    iget-object v5, v0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 120
    .line 121
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 122
    .line 123
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 124
    .line 125
    monitor-enter v5

    .line 126
    :try_start_3
    invoke-virtual {v6, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    iput-wide v1, v9, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 131
    .line 132
    invoke-virtual {v9}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 136
    .line 137
    .line 138
    monitor-exit v5

    .line 139
    goto :goto_2

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 143
    .line 144
    throw p0

    .line 145
    :cond_2
    :goto_2
    and-int/lit8 v1, v4, 0x1

    .line 146
    .line 147
    if-eqz v1, :cond_3

    .line 148
    .line 149
    cmp-long v1, p1, v7

    .line 150
    .line 151
    if-eqz v1, :cond_3

    .line 152
    .line 153
    iget-object v1, v0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 154
    .line 155
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 156
    .line 157
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 158
    .line 159
    monitor-enter v1

    .line 160
    :try_start_4
    invoke-virtual {v6, v3}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    iput-wide p1, v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 170
    .line 171
    .line 172
    monitor-exit v1

    .line 173
    goto :goto_3

    .line 174
    :catchall_1
    move-exception p0

    .line 175
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 177
    .line 178
    throw p0

    .line 179
    :cond_3
    :goto_3
    if-eqz p0, :cond_4

    .line 180
    .line 181
    invoke-virtual {v0, p0, v6, v3, v4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    .line 182
    .line 183
    .line 184
    :cond_4
    return-void
.end method
