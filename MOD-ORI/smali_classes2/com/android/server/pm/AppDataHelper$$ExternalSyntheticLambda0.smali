.class public final synthetic Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppDataHelper;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppDataHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v6, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/AppDataHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v7, "PackageManager"

    .line 11
    .line 12
    new-instance v8, Landroid/util/TimingsTraceLog;

    .line 13
    .line 14
    const-string v1, "SystemServerTimingAsync"

    .line 15
    .line 16
    const-wide/32 v2, 0x40000

    .line 17
    .line 18
    .line 19
    invoke-direct {v8, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    const-string v1, "AppDataFixup"

    .line 23
    .line 24
    invoke-virtual {v8, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v1, v6, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 28
    .line 29
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 32
    .line 33
    .line 34
    move-result v3
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    invoke-interface {v1, v2, v3}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    :try_start_2
    invoke-static {v1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    throw v1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    :catch_1
    move-exception v1

    .line 52
    const-string v2, "Trouble fixing GIDs"

    .line 53
    .line 54
    invoke-static {v7, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 58
    .line 59
    .line 60
    const-string v1, "AppDataPrepare"

    .line 61
    .line 62
    invoke-virtual {v8, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_1
    new-instance v9, Lcom/android/server/pm/Installer$Batch;

    .line 76
    .line 77
    invoke-direct {v9}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    const/4 v11, 0x0

    .line 85
    move v12, v11

    .line 86
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/lang/String;

    .line 97
    .line 98
    iget-object v1, v6, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v1, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    invoke-interface {v0, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 121
    .line 122
    const/4 v3, 0x0

    .line 123
    const/4 v5, 0x1

    .line 124
    move-object v0, v6

    .line 125
    move-object v1, v9

    .line 126
    move v4, p0

    .line 127
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/AndroidPackage;IIZ)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v12, v12, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    iget-object p0, v6, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 134
    .line 135
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 136
    .line 137
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 140
    .line 141
    .line 142
    :try_start_3
    invoke-virtual {v6, v9}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 149
    .line 150
    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v0, "Deferred reconcileAppsData finished "

    .line 154
    .line 155
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, " packages"

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {v7, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :catchall_1
    move-exception p0

    .line 180
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 181
    .line 182
    .line 183
    :goto_2
    throw v0

    .line 184
    :cond_4
    :goto_3
    return-void
.end method
