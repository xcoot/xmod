.class public final Lcom/android/server/am/ConnectionRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/OomAdjusterModernImpl$Connection;


# static fields
.field public static final BIND_ORIG_ENUMS:[I

.field public static final BIND_PROTO_ENUMS:[I


# instance fields
.field public final activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

.field public final aliasComponent:Landroid/content/ComponentName;

.field public association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field public final binding:Lcom/android/server/am/AppBindRecord;

.field public final clientIntent:Landroid/app/PendingIntent;

.field public final clientLabel:I

.field public final clientPackageName:Ljava/lang/String;

.field public final clientProcessName:Ljava/lang/String;

.field public final clientUid:I

.field public final conn:Landroid/app/IServiceConnection;

.field public final flags:J

.field public mProcStatsLock:Ljava/lang/Object;

.field public serviceDead:Z

.field public stringName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x12

    .line 3
    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_0

    .line 8
    sput-object v1, Lcom/android/server/am/ConnectionRecord;->BIND_ORIG_ENUMS:[I

    .line 10
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_1

    .line 15
    sput-object v0, Lcom/android/server/am/ConnectionRecord;->BIND_PROTO_ENUMS:[I

    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x800000
        0x8
        0x10
        0x20
        0x40
        0x80
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        0x100
        0x1000
        0x200
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x12
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Landroid/app/IServiceConnection;JILandroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 8
    iput-object p3, p0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 10
    iput-wide p4, p0, Lcom/android/server/am/ConnectionRecord;->flags:J

    .line 12
    iput p6, p0, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    .line 14
    iput-object p7, p0, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    .line 16
    iput p8, p0, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    .line 18
    iput-object p9, p0, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    .line 20
    iput-object p10, p0, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 22
    iput-object p11, p0, Lcom/android/server/am/ConnectionRecord;->aliasComponent:Landroid/content/ComponentName;

    .line 24
    return-void
.end method


# virtual methods
.method public final computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZI)V
    .locals 14

    .line 1
    const/4 v9, 0x0

    .line 2
    const/16 v11, 0x3e9

    .line 4
    const/4 v8, 0x0

    .line 5
    const/4 v12, 0x0

    .line 6
    const/4 v13, 0x0

    .line 7
    move-object v0, p1

    .line 8
    move-object v1, p0

    .line 9
    move-object/from16 v2, p2

    .line 11
    move-object/from16 v3, p3

    .line 13
    move-wide/from16 v4, p4

    .line 15
    move-object/from16 v6, p6

    .line 17
    move/from16 v7, p7

    .line 19
    move/from16 v10, p8

    .line 21
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/OomAdjuster;->computeServiceHostOomAdjLSP(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZZZIIZZ)Z

    .line 24
    return-void
.end method

.method public final hasFlag(I)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/ConnectionRecord;->flags:J

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    .line 6
    move-result-wide p0

    .line 7
    and-long/2addr p0, v0

    .line 8
    const-wide/16 v0, 0x0

    .line 10
    cmp-long p0, p0, v0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final notHasFlag(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method public final startAssociationIfNeeded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 3
    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 7
    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 9
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 11
    if-eqz v1, :cond_3

    .line 13
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 17
    iget v2, p0, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    .line 19
    if-ne v1, v2, :cond_0

    .line 21
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 33
    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 35
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 37
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 39
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 41
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Lcom/android/server/am/PackageList;->get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 51
    const-string v0, "ActivityManager"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    const-string v2, "No package in referenced service "

    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 62
    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 64
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v2, ": proc="

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 76
    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 78
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 93
    if-nez v1, :cond_2

    .line 95
    const-string v0, "ActivityManager"

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "Inactive holder in referenced service "

    .line 101
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 106
    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 108
    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v2, ": proc="

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 120
    iget-object p0, p0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 122
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 124
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p0

    .line 131
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 137
    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 139
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 141
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 143
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 145
    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 147
    iput-object v1, p0, Lcom/android/server/am/ConnectionRecord;->mProcStatsLock:Ljava/lang/Object;

    .line 149
    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 152
    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 154
    iget-object v3, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 156
    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 158
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 160
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->getAssociationStateLocked(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    .line 167
    move-result-object v0

    .line 168
    iget v2, p0, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    .line 170
    iget-object v3, p0, Lcom/android/server/am/ConnectionRecord;->clientProcessName:Ljava/lang/String;

    .line 172
    iget-object v4, p0, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/AssociationState;->startSource(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 177
    move-result-object v0

    .line 178
    iput-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 180
    monitor-exit v1

    .line 181
    goto :goto_0

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    throw p0

    .line 185
    :cond_3
    :goto_0
    return-void
.end method

.method public final stopAssociation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->mProcStatsLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 10
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop()V

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw p0

    .line 21
    :cond_0
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->stringName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    const/16 v0, 0x80

    .line 8
    const-string v1, "ConnectionRecord{"

    .line 10
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 17
    move-result v2

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, " u"

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v2, p0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 32
    iget-object v3, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 34
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const/16 v3, 0x20

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    const/4 v4, 0x1

    .line 45
    invoke-virtual {p0, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 51
    const-string v4, "CR "

    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_1
    const/4 v4, 0x2

    .line 57
    invoke-virtual {p0, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_2

    .line 63
    const-string v4, "DBG "

    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_2
    const/4 v4, 0x4

    .line 69
    invoke-virtual {p0, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_3

    .line 75
    const-string v4, "!FG "

    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_3
    const/high16 v4, 0x800000

    .line 82
    invoke-virtual {p0, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_4

    .line 88
    const-string v4, "IMPB "

    .line 90
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_4
    const/16 v4, 0x8

    .line 95
    invoke-virtual {p0, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_5

    .line 101
    const-string v4, "ABCLT "

    .line 103
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_5
    const/16 v4, 0x10

    .line 108
    invoke-virtual {p0, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_6

    .line 114
    const-string v4, "OOM "

    .line 116
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_7

    .line 125
    const-string v3, "WPRI "

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_7
    const/16 v3, 0x40

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_8

    .line 138
    const-string v3, "IMP "

    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_9

    .line 149
    const-string v0, "WACT "

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_9
    const/high16 v0, 0x2000000

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_a

    .line 162
    const-string v0, "FGSA "

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_a
    const/high16 v0, 0x4000000

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_b

    .line 175
    const-string v0, "FGS "

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_b
    const/high16 v0, 0x8000000

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_c

    .line 188
    const-string v0, "LACT "

    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_c
    const/high16 v0, 0x80000

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_d

    .line 201
    const-string v0, "SLTA "

    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_d
    const/high16 v0, 0x10000000

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_e

    .line 214
    const-string v0, "VFGS "

    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_e
    const/high16 v0, 0x20000000

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_f

    .line 227
    const-string v0, "UI "

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_f
    const/high16 v0, 0x40000000    # 2.0f

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_10

    .line 240
    const-string v0, "!VIS "

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_10
    const/16 v0, 0x100

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_11

    .line 253
    const-string v0, "!PRCP "

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_11
    const/16 v0, 0x200

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_12

    .line 266
    const-string v0, "BALF "

    .line 268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_12
    const/16 v0, 0x1000

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_13

    .line 279
    const-string v0, "CAPS "

    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 286
    if-eqz v0, :cond_14

    .line 288
    const-string v0, "DEAD "

    .line 290
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_14
    iget-object v0, v2, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 295
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 297
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v0, ":@"

    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 307
    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    .line 310
    move-result-object v0

    .line 311
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 314
    move-result v0

    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    .line 324
    const-string v2, " flags=0x"

    .line 326
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    iget-wide v2, p0, Lcom/android/server/am/ConnectionRecord;->flags:J

    .line 331
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const/16 v0, 0x7d

    .line 347
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    move-result-object v0

    .line 354
    iput-object v0, p0, Lcom/android/server/am/ConnectionRecord;->stringName:Ljava/lang/String;

    .line 356
    return-object v0
.end method

.method public final trackProcState(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/ConnectionRecord;->mProcStatsLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ConnectionRecord;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->trackProcState(IIJ)V

    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0

    .line 22
    :cond_0
    :goto_0
    return-void
.end method
