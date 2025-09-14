.class public final Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAcquisitionCount:I

.field public mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field public final mOwningProcessName:Ljava/lang/String;

.field public final mOwningUid:I

.field public mProcStatsLock:Ljava/lang/Object;

.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/am/ContentProviderRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningUid:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningProcessName:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string p3, "Couldn\'t register for death for token: "

    .line 21
    .line 22
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    .line 26
    .line 27
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p2, "ExternalProcessHanldle"

    .line 35
    .line 36
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->service:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->this$0:Lcom/android/server/am/ContentProviderRecord;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mToken:Landroid/os/IBinder;

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleInternalLocked(Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final startAssociationIfNeeded(Lcom/android/server/am/ContentProviderRecord;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningUid:I

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningProcessName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 32
    .line 33
    iget-object v1, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const-string p0, "ActivityManager"

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "No package in referenced provider "

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ": proc="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 82
    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    const-string p0, "ActivityManager"

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, "Inactive holder in referenced provider "

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ": proc="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 124
    .line 125
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 126
    .line 127
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mProcStatsLock:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 135
    .line 136
    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v2, v0, p1}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->getAssociationStateLocked(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget v0, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningUid:I

    .line 147
    .line 148
    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mOwningProcessName:Ljava/lang/String;

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/app/procstats/AssociationState;->startSource(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAssociation:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 156
    .line 157
    monitor-exit v1

    .line 158
    goto :goto_0

    .line 159
    :catchall_0
    move-exception p0

    .line 160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    throw p0

    .line 162
    :cond_3
    :goto_0
    return-void
.end method
