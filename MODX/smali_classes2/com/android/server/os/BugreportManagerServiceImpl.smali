.class public final Lcom/android/server/os/BugreportManagerServiceImpl;
.super Landroid/os/IDumpstate$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_BUGREPORT_CONSENTLESS_GRACE_PERIOD_MILLIS:J

.field public static final sFeatureFlags:Lcom/android/server/os/FeatureFlagsImpl;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mBugreportAllowlistedPackages:Landroid/util/ArraySet;

.field public final mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

.field public final mFinishedBugreports:Landroid/util/LocalLog;

.field public final mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

.field public final mLock:Ljava/lang/Object;

.field public mNumberFinishedBugreports:I

.field public mPreDumpedDataUid:Ljava/util/OptionalInt;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x2

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/os/BugreportManagerServiceImpl;->DEFAULT_BUGREPORT_CONSENTLESS_GRACE_PERIOD_MILLIS:J

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/os/FeatureFlagsImpl;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/os/BugreportManagerServiceImpl;->sFeatureFlags:Lcom/android/server/os/FeatureFlagsImpl;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/android/server/os/BugreportManagerServiceImpl$Injector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/IDumpstate$Stub;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    .line 16
    .line 17
    new-instance v0, Landroid/util/LocalLog;

    .line 18
    .line 19
    const/16 v1, 0x14

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mFinishedBugreports:Landroid/util/LocalLog;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-class v1, Landroid/app/AppOpsManager;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/app/AppOpsManager;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 41
    .line 42
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    .line 52
    new-instance v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 53
    .line 54
    iget-object v1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mMappingFile:Landroid/util/AtomicFile;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;-><init>(Landroid/util/AtomicFile;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mAllowlistedPackages:Landroid/util/ArraySet;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportAllowlistedPackages:Landroid/util/ArraySet;

    .line 64
    .line 65
    return-void
.end method

.method public static callerToString(Landroid/util/Pair;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "N/A"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "/"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    return-object p0
.end method

.method public static reportError(Landroid/os/IDumpstateListener;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v0, "onError() transaction threw RemoteException: "

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string p1, "BugreportManagerService"

    .line 26
    .line 27
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method


# virtual methods
.method public final cancelBugreport(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(ILjava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const-string v0, "BugreportManagerService"

    .line 10
    .line 11
    const-string v1, "Cancelling bugreport for %s / %d"

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    filled-new-array {p2, v2}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    const-string v1, "dumpstate"

    .line 28
    .line 29
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    const-string p0, "BugreportManagerService"

    .line 40
    .line 41
    const-string p1, "cancelBugreport: Could not find native dumpstate service"

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/os/IDumpstate;->cancelBugreport(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    :try_start_2
    const-string p2, "BugreportManagerService"

    .line 56
    .line 57
    const-string v1, "RemoteException in cancelBugreport"

    .line 58
    .line 59
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    .line 63
    .line 64
    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "BugreportManagerService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string p1, "Allow-listed packages: %s\n"

    .line 13
    .line 14
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportAllowlistedPackages:Landroid/util/ArraySet;

    .line 15
    .line 16
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p2, p1, p3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    const-string p3, "Pre-dumped data UID: "

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/util/OptionalInt;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-eqz p3, :cond_1

    .line 38
    .line 39
    const-string/jumbo p3, "none"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto/16 :goto_8

    .line 48
    .line 49
    :cond_1
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/util/OptionalInt;->getAsInt()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    .line 59
    .line 60
    if-nez p3, :cond_2

    .line 61
    .line 62
    const-string p3, "Not taking a bug report"

    .line 63
    .line 64
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-static {p3, p2}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->-$$Nest$mdump(Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;Ljava/io/PrintWriter;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    iget p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    if-nez p3, :cond_3

    .line 75
    .line 76
    const-string p3, "No finished bugreports"

    .line 77
    .line 78
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    const-string v1, "%d finished bugreport%s. Last %d:\n"

    .line 83
    .line 84
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    iget v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    .line 89
    .line 90
    if-le v2, v0, :cond_4

    .line 91
    .line 92
    const-string/jumbo v3, "s"

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    const-string v3, ""

    .line 97
    .line 98
    :goto_2
    const/16 v4, 0x14

    .line 99
    .line 100
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    filled-new-array {p3, v3, v2}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-virtual {p2, v1, p3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 113
    .line 114
    .line 115
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mFinishedBugreports:Landroid/util/LocalLog;

    .line 116
    .line 117
    const-string v1, "  "

    .line 118
    .line 119
    invoke-virtual {p3, v1, p2}, Landroid/util/LocalLog;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 120
    .line 121
    .line 122
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 124
    .line 125
    iget-object p3, p1, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    .line 126
    .line 127
    monitor-enter p3

    .line 128
    :try_start_1
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 129
    .line 130
    iget-boolean p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mReadBugreportMapping:Z

    .line 131
    .line 132
    if-nez p1, :cond_5

    .line 133
    .line 134
    const-string p1, "Has not read bugreport mapping"

    .line 135
    .line 136
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    goto :goto_7

    .line 142
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    const-string v1, "%d pending file%s"

    .line 151
    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-le p1, v0, :cond_6

    .line 157
    .line 158
    const-string/jumbo v0, "s"

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_6
    const-string v0, ""

    .line 163
    .line 164
    :goto_5
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p2, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 169
    .line 170
    .line 171
    if-lez p1, :cond_7

    .line 172
    .line 173
    const/4 v0, 0x0

    .line 174
    :goto_6
    if-ge v0, p1, :cond_8

    .line 175
    .line 176
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 177
    .line 178
    iget-object v1, v1, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Landroid/util/Pair;

    .line 185
    .line 186
    iget-object v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 187
    .line 188
    iget-object v2, v2, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 189
    .line 190
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Landroid/util/ArraySet;

    .line 195
    .line 196
    const-string v3, "  %s: %s\n"

    .line 197
    .line 198
    invoke-static {v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->callerToString(Landroid/util/Pair;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {p2, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 207
    .line 208
    .line 209
    add-int/lit8 v0, v0, 0x1

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 213
    .line 214
    .line 215
    :cond_8
    monitor-exit p3

    .line 216
    return-void

    .line 217
    :goto_7
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    throw p0

    .line 219
    :goto_8
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    throw p0
.end method

.method public final enforcePermission(ILjava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportAllowlistedPackages:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mRoleManagerWrapper:Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;

    .line 21
    .line 22
    const-string v2, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector$RoleManagerWrapper;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-class v3, Landroid/app/role/RoleManager;

    .line 29
    .line 30
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/app/role/RoleManager;

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-string v0, "android.permission.DUMP"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    if-eqz p3, :cond_2

    .line 71
    .line 72
    :try_start_1
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    const/4 p1, 0x1

    .line 79
    if-ne p0, p1, :cond_2

    .line 80
    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    .line 92
    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, " does not hold the DUMP permission or is not bugreport-whitelisted or does not have an allowed role "

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    if-eqz p3, :cond_3

    .line 107
    .line 108
    const-string p1, "and does not have carrier privileges "

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const-string p1, ""

    .line 112
    .line 113
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string/jumbo p1, "to request a bugreport"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    const-string p1, "BugreportManagerService"

    .line 127
    .line 128
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    new-instance p1, Ljava/lang/SecurityException;

    .line 132
    .line 133
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
.end method

.method public final preDumpUiData(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(ILjava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->preDumpUiDataLocked(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final preDumpUiDataLocked(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    .line 6
    .line 7
    const-string v0, "dumpstate"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    const-string v1, "BugreportManagerService"

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string p0, "\'dumpstate\' is already running. Cannot pre-dump data while another operation is currently in progress."

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    const-string p0, "Unable to get bugreport service"

    .line 39
    .line 40
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IDumpstate;->preDumpUiData(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {p1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->stopDumpstateBinderServiceLocked()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    move-object/from16 v3, p8

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v11

    .line 11
    const/4 v12, 0x0

    .line 12
    invoke-virtual {v0, v11, v10, v12}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(ILjava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    const-string v1, "BugreportManagerService"

    .line 16
    .line 17
    const-string v2, "Retrieving bugreport for %s / %d"

    .line 18
    .line 19
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    filled-new-array {v10, v4}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v1, v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v13, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 31
    .line 32
    iget-object v14, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v15

    .line 38
    new-instance v1, Landroid/util/Pair;

    .line 39
    .line 40
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-direct {v1, v2, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object/from16 v16, v1

    .line 48
    .line 49
    move/from16 v17, p3

    .line 50
    .line 51
    move-object/from16 v18, p5

    .line 52
    .line 53
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->ensureCallerPreviouslyGeneratedFile(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/Pair;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .line 55
    .line 56
    iget-object v13, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v13

    .line 59
    :try_start_1
    const-string v1, "dumpstate"

    .line 60
    .line 61
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    const-string v0, "BugreportManagerService"

    .line 72
    .line 73
    const-string v1, "\'dumpstate\' is already running. Cannot retrieve a bugreport while another one is currently in progress."

    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x5

    .line 79
    invoke-static {v3, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 80
    .line 81
    .line 82
    monitor-exit v13

    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    if-nez v14, :cond_1

    .line 92
    .line 93
    const-string v0, "BugreportManagerService"

    .line 94
    .line 95
    const-string v1, "Unable to get bugreport service"

    .line 96
    .line 97
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    const/4 v0, 0x2

    .line 101
    invoke-static {v3, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 102
    .line 103
    .line 104
    monitor-exit v13

    .line 105
    return-void

    .line 106
    :cond_1
    iget-object v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 107
    .line 108
    invoke-virtual {v1, v10, v12}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->canSkipConsentScreen(Ljava/lang/String;Z)Z

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    new-instance v9, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    .line 113
    .line 114
    new-instance v5, Landroid/util/Pair;

    .line 115
    .line 116
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v5, v1, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    xor-int/lit8 v8, v15, 0x1

    .line 124
    .line 125
    const/4 v6, 0x1

    .line 126
    const/16 v16, 0x1

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    move-object v1, v9

    .line 130
    move-object/from16 v2, p0

    .line 131
    .line 132
    move-object/from16 v3, p8

    .line 133
    .line 134
    move-object v4, v14

    .line 135
    move-object v12, v9

    .line 136
    move/from16 v9, v16

    .line 137
    .line 138
    invoke-direct/range {v1 .. v9}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;Landroid/util/Pair;ZZZZ)V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Landroid/app/admin/flags/Flags;->onboardingBugreportV2Enabled()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_2

    .line 146
    .line 147
    iget-object v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 148
    .line 149
    iget-object v1, v1, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    .line 150
    .line 151
    move-object/from16 v5, p5

    .line 152
    .line 153
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    move v6, v1

    .line 158
    goto :goto_0

    .line 159
    :cond_2
    move-object/from16 v5, p5

    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    :goto_0
    iget-object v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    .line 163
    .line 164
    if-eqz v1, :cond_3

    .line 165
    .line 166
    filled-new-array {v12, v1}, [Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const-string v2, "BugreportManagerService"

    .line 171
    .line 172
    const-string/jumbo v3, "setCurrentDumpstateListenerLocked(%s): called when mCurrentDumpstateListener is already set (%s)"

    .line 173
    .line 174
    .line 175
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_3
    iput-object v12, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .line 180
    move-object v0, v14

    .line 181
    move v1, v11

    .line 182
    move-object/from16 v2, p2

    .line 183
    .line 184
    move/from16 v3, p3

    .line 185
    .line 186
    move-object/from16 v4, p4

    .line 187
    .line 188
    move-object/from16 v5, p5

    .line 189
    .line 190
    move v7, v15

    .line 191
    move-object v8, v12

    .line 192
    :try_start_2
    invoke-interface/range {v0 .. v8}, Landroid/os/IDumpstate;->retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    move-object v1, v0

    .line 198
    :try_start_3
    const-string v0, "BugreportManagerService"

    .line 199
    .line 200
    const-string v2, "RemoteException in retrieveBugreport"

    .line 201
    .line 202
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .line 204
    .line 205
    :goto_1
    monitor-exit v13

    .line 206
    return-void

    .line 207
    :goto_2
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    throw v0

    .line 209
    :catch_1
    move-exception v0

    .line 210
    const-string v1, "BugreportManagerService"

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    const/4 v0, 0x6

    .line 220
    invoke-static {v3, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public final startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "ctl.start"

    .line 7
    .line 8
    const-string v0, "bugreportd"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    const/4 v0, 0x0

    .line 15
    const/16 v1, 0x1f4

    .line 16
    .line 17
    move v2, p0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    const-string/jumbo v4, "ms)"

    .line 20
    .line 21
    .line 22
    const-string v5, "BugreportManagerService"

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    const-string v0, "dumpstate"

    .line 27
    .line 28
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const-string p0, "Got bugreport service handle."

    .line 39
    .line 40
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    int-to-long v6, v1

    .line 45
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v6, "Waiting to get dumpstate service handle ("

    .line 51
    .line 52
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    add-int/2addr v3, v1

    .line 69
    mul-int/lit8 v1, v1, 0x2

    .line 70
    .line 71
    int-to-long v4, v3

    .line 72
    const-wide/16 v6, 0x7530

    .line 73
    .line 74
    cmp-long v2, v4, v6

    .line 75
    .line 76
    if-lez v2, :cond_1

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move v2, p0

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 83
    .line 84
    const-string p0, "Timed out waiting to get dumpstate service handle ("

    .line 85
    .line 86
    invoke-static {v3, p0, v4, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-object v0
.end method

.method public final startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p2

    .line 4
    .line 5
    move/from16 v10, p5

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    const/4 v2, 0x4

    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x1

    .line 22
    if-eqz v10, :cond_1

    .line 23
    .line 24
    if-eq v10, v5, :cond_1

    .line 25
    .line 26
    if-eq v10, v4, :cond_1

    .line 27
    .line 28
    const/4 v6, 0x3

    .line 29
    if-eq v10, v6, :cond_1

    .line 30
    .line 31
    if-eq v10, v2, :cond_1

    .line 32
    .line 33
    if-eq v10, v1, :cond_1

    .line 34
    .line 35
    const/4 v6, 0x7

    .line 36
    if-ne v10, v6, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "Unknown bugreport mode: "

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "BugreportManagerService"

    .line 54
    .line 55
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    invoke-static {v10, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_1
    :goto_0
    and-int/lit8 v6, p6, -0x8

    .line 69
    .line 70
    if-nez v6, :cond_10

    .line 71
    .line 72
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    const/4 v6, 0x0

    .line 77
    if-ne v10, v2, :cond_2

    .line 78
    .line 79
    move v2, v5

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move v2, v6

    .line 82
    :goto_1
    invoke-virtual {v0, v12, v11, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;->enforcePermission(ILjava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 94
    .line 95
    .line 96
    move-result-wide v7

    .line 97
    :try_start_0
    iget-object v9, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 98
    .line 99
    iget-object v9, v9, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    const-class v13, Landroid/os/UserManager;

    .line 102
    .line 103
    invoke-virtual {v9, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    check-cast v9, Landroid/os/UserManager;

    .line 108
    .line 109
    invoke-virtual {v9, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    if-nez v9, :cond_3

    .line 114
    .line 115
    iget-object v9, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 116
    .line 117
    iget-object v9, v9, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    const-class v13, Landroid/os/UserManager;

    .line 120
    .line 121
    invoke-virtual {v9, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    check-cast v9, Landroid/os/UserManager;

    .line 126
    .line 127
    invoke-virtual {v9, v2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    goto :goto_2

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    goto/16 :goto_b

    .line 134
    .line 135
    :cond_3
    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    .line 136
    .line 137
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 138
    .line 139
    .line 140
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    .line 143
    .line 144
    if-nez v9, :cond_6

    .line 145
    .line 146
    if-ne v10, v4, :cond_5

    .line 147
    .line 148
    iget-object v7, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 149
    .line 150
    iget-object v7, v7, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    const-class v8, Landroid/app/admin/DevicePolicyManager;

    .line 153
    .line 154
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    .line 159
    .line 160
    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    const/16 v9, -0x2710

    .line 165
    .line 166
    if-eq v8, v9, :cond_5

    .line 167
    .line 168
    if-eq v2, v8, :cond_6

    .line 169
    .line 170
    invoke-virtual {v7, v2}, Landroid/app/admin/DevicePolicyManager;->isAffiliatedUser(I)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-eqz v7, :cond_4

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v1, "User "

    .line 180
    .line 181
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v1, " is not affiliated to the device owner."

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const-string v1, "BugreportManagerService"

    .line 197
    .line 198
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 202
    .line 203
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v1

    .line 207
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v1, "Calling user %s is not an admin user. Only admin users and their profiles are allowed to take bugreport."

    .line 216
    .line 217
    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const-string v1, "BugreportManagerService"

    .line 222
    .line 223
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 227
    .line 228
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v1

    .line 232
    :cond_6
    :goto_3
    const-string v2, "BugreportManagerService"

    .line 233
    .line 234
    const-string v7, "Starting bugreport for %s / %d"

    .line 235
    .line 236
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    filled-new-array {v11, v8}, [Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    invoke-static {v2, v7, v8}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    new-instance v2, Landroid/util/MutableBoolean;

    .line 248
    .line 249
    invoke-direct {v2, v6}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 250
    .line 251
    .line 252
    sget-object v2, Lcom/android/server/os/BugreportManagerServiceImpl;->sFeatureFlags:Lcom/android/server/os/FeatureFlagsImpl;

    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    iget-object v13, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 258
    .line 259
    monitor-enter v13

    .line 260
    :try_start_1
    const-string v2, "dumpstate"

    .line 261
    .line 262
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-static {v2}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    if-eqz v2, :cond_7

    .line 271
    .line 272
    move v2, v5

    .line 273
    goto :goto_4

    .line 274
    :cond_7
    move v2, v6

    .line 275
    :goto_4
    const-string v14, "BugreportManagerService"

    .line 276
    .line 277
    if-eqz v2, :cond_8

    .line 278
    .line 279
    const-string v0, "\'dumpstate\' is already running. Cannot start a new bugreport while another operation is currently in progress."

    .line 280
    .line 281
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    invoke-static {v3, v1}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_a

    .line 288
    .line 289
    :cond_8
    and-int/lit8 v1, p6, 0x1

    .line 290
    .line 291
    if-eqz v1, :cond_a

    .line 292
    .line 293
    iget-object v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/util/OptionalInt;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_9

    .line 300
    .line 301
    and-int/lit8 v1, p6, -0x2

    .line 302
    .line 303
    const-string v2, "Ignoring BUGREPORT_FLAG_USE_PREDUMPED_UI_DATA. No pre-dumped data is available."

    .line 304
    .line 305
    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    :goto_5
    move v15, v1

    .line 309
    goto :goto_6

    .line 310
    :cond_9
    iget-object v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mPreDumpedDataUid:Ljava/util/OptionalInt;

    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eq v1, v12, :cond_a

    .line 317
    .line 318
    and-int/lit8 v1, p6, -0x2

    .line 319
    .line 320
    const-string v2, "Ignoring BUGREPORT_FLAG_USE_PREDUMPED_UI_DATA. Data was pre-dumped by a different UID."

    .line 321
    .line 322
    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_a
    move/from16 v15, p6

    .line 327
    .line 328
    :goto_6
    and-int/lit8 v1, v15, 0x2

    .line 329
    .line 330
    if-eqz v1, :cond_b

    .line 331
    .line 332
    move v9, v5

    .line 333
    goto :goto_7

    .line 334
    :cond_b
    move v9, v6

    .line 335
    :goto_7
    and-int/lit8 v1, v15, 0x4

    .line 336
    .line 337
    if-eqz v1, :cond_c

    .line 338
    .line 339
    move v7, v5

    .line 340
    goto :goto_8

    .line 341
    :cond_c
    move v7, v6

    .line 342
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    .line 343
    .line 344
    .line 345
    move-result-object v16

    .line 346
    if-nez v16, :cond_d

    .line 347
    .line 348
    const-string v0, "Unable to get bugreport service"

    .line 349
    .line 350
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    invoke-static {v3, v4}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 354
    .line 355
    .line 356
    goto :goto_a

    .line 357
    :cond_d
    iget-object v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    .line 358
    .line 359
    xor-int/lit8 v2, v9, 0x1

    .line 360
    .line 361
    invoke-virtual {v1, v11, v2}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->canSkipConsentScreen(Ljava/lang/String;Z)Z

    .line 362
    .line 363
    .line 364
    move-result v17

    .line 365
    new-instance v8, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    .line 366
    .line 367
    new-instance v4, Landroid/util/Pair;

    .line 368
    .line 369
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-direct {v4, v1, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    if-nez v9, :cond_e

    .line 377
    .line 378
    if-nez v17, :cond_e

    .line 379
    .line 380
    move/from16 v18, v5

    .line 381
    .line 382
    goto :goto_9

    .line 383
    :cond_e
    move/from16 v18, v6

    .line 384
    .line 385
    :goto_9
    move-object v1, v8

    .line 386
    move-object/from16 v2, p0

    .line 387
    .line 388
    move-object/from16 v3, p7

    .line 389
    .line 390
    move-object v5, v4

    .line 391
    move-object/from16 v4, v16

    .line 392
    .line 393
    move v6, v9

    .line 394
    move-object v10, v8

    .line 395
    move/from16 v8, v18

    .line 396
    .line 397
    invoke-direct/range {v1 .. v9}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;Landroid/util/Pair;ZZZZ)V

    .line 398
    .line 399
    .line 400
    iget-object v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    .line 401
    .line 402
    if-eqz v1, :cond_f

    .line 403
    .line 404
    filled-new-array {v10, v1}, [Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    const-string/jumbo v2, "setCurrentDumpstateListenerLocked(%s): called when mCurrentDumpstateListener is already set (%s)"

    .line 409
    .line 410
    .line 411
    invoke-static {v14, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    :cond_f
    iput-object v10, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    .line 416
    move-object/from16 v1, v16

    .line 417
    .line 418
    move v2, v12

    .line 419
    move-object/from16 v3, p2

    .line 420
    .line 421
    move-object/from16 v4, p3

    .line 422
    .line 423
    move-object/from16 v5, p4

    .line 424
    .line 425
    move/from16 v6, p5

    .line 426
    .line 427
    move v7, v15

    .line 428
    move-object v8, v10

    .line 429
    move/from16 v9, p8

    .line 430
    .line 431
    move/from16 v10, v17

    .line 432
    .line 433
    :try_start_2
    invoke-interface/range {v1 .. v10}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 434
    .line 435
    .line 436
    goto :goto_a

    .line 437
    :catch_0
    :try_start_3
    invoke-virtual {v0, v12, v11}, Lcom/android/server/os/BugreportManagerServiceImpl;->cancelBugreport(ILjava/lang/String;)V

    .line 438
    .line 439
    .line 440
    :goto_a
    monitor-exit v13

    .line 441
    return-void

    .line 442
    :catchall_1
    move-exception v0

    .line 443
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 444
    throw v0

    .line 445
    :goto_b
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 446
    .line 447
    .line 448
    throw v0

    .line 449
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    const-string v1, "Unknown bugreport flags: "

    .line 452
    .line 453
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    const-string v2, "BugreportManagerService"

    .line 464
    .line 465
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 469
    .line 470
    invoke-static {v6, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    throw v0
.end method

.method public final stopDumpstateBinderServiceLocked()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mInjector:Lcom/android/server/os/BugreportManagerServiceImpl$Injector;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "ctl.stop"

    .line 7
    .line 8
    const-string v0, "bugreportd"

    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
