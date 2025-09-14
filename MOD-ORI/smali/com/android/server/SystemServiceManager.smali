.class public final Lcom/android/server/SystemServiceManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static volatile sOtherServicesStartIndex:I

.field public static sSystemDir:Ljava/io/File;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentPhase:I

.field public mCurrentUser:Lcom/android/server/SystemService$TargetUser;

.field public final mNumUserPoolThreads:I

.field public mRuntimeRestarted:Z

.field public mRuntimeStartElapsedTime:J

.field public mRuntimeStartUptime:J

.field public mSafeMode:Z

.field public mServiceClassnames:Ljava/util/Set;

.field public mServices:Ljava/util/List;

.field public final mTargetUsers:Landroid/util/SparseArray;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 6
    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 22
    .line 23
    new-instance p1, Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/android/server/SystemServiceManager;->mNumUserPoolThreads:I

    .line 44
    .line 45
    return-void
.end method

.method public static ensureSystemDir()Ljava/io/File;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    const-string/jumbo v2, "system"

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object v0, Lcom/android/server/SystemServiceManager;->sSystemDir:Ljava/io/File;

    .line 23
    .line 24
    return-object v0
.end method

.method public static loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object p0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v2, "Failed to create service "

    .line 11
    .line 12
    const-string v3, " from class loader "

    .line 13
    .line 14
    invoke-static {v2, p0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ": service class not found, usually indicates that the caller should have called PackageManager.hasSystemFeature() to check whether the feature is available on this device before trying to start the services that implement it. Also ensure that the correct path for the classloader is supplied, if applicable."

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method

.method public static logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SystemService failure: Failure reporting "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p0, " of user "

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, " to service "

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "SystemServiceManager"

    .line 32
    .line 33
    invoke-static {p1, p0, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x32

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Service "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " took "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " ms in "

    .line 34
    .line 35
    const-string v2, "SystemServiceManager"

    .line 36
    .line 37
    invoke-static {v0, v1, p3, v2}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz p4, :cond_0

    .line 41
    .line 42
    const-wide/16 v0, 0xc8

    .line 43
    .line 44
    cmp-long p3, v0, p0

    .line 45
    .line 46
    if-gez p3, :cond_0

    .line 47
    .line 48
    const-string p3, "!@Boot_SystemServer: "

    .line 49
    .line 50
    const-string/jumbo v0, "ms : ("

    .line 51
    .line 52
    .line 53
    invoke-static {p4, p3, p0, p1, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    const-string v0, ") "

    .line 58
    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-static {v2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v0, "!@Boot_EBS:   Took "

    .line 75
    .line 76
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string/jumbo p0, "ms by \'"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p0, "\' ("

    .line 92
    .line 93
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p0, ")"

    .line 100
    .line 101
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "Current phase: %d\n"

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, p2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 17
    .line 18
    monitor-enter p2

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, "Current user: "

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/android/server/SystemService$TargetUser;->dump(Ljava/io/PrintWriter;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_0
    const-string v0, "Current user not set!"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    if-lez v0, :cond_3

    .line 53
    .line 54
    const-string v2, "%d target users: "

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 65
    .line 66
    .line 67
    move v2, v1

    .line 68
    :goto_1
    if-ge v2, v0, :cond_2

    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/android/server/SystemService$TargetUser;

    .line 77
    .line 78
    invoke-virtual {v3, p1}, Lcom/android/server/SystemService$TargetUser;->dump(Ljava/io/PrintWriter;)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v3, v0, -0x1

    .line 82
    .line 83
    if-eq v2, v3, :cond_1

    .line 84
    .line 85
    const-string v3, ", "

    .line 86
    .line 87
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    const-string v0, "No target users"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object p2, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    const-string v0, "  "

    .line 110
    .line 111
    if-lez p2, :cond_4

    .line 112
    .line 113
    const-string v2, "%d started services:\n"

    .line 114
    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 124
    .line 125
    .line 126
    :goto_3
    if-ge v1, p2, :cond_5

    .line 127
    .line 128
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Lcom/android/server/SystemService;

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v1, v1, 0x1

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_4
    const-string p0, "No started services"

    .line 154
    .line 155
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_5
    return-void

    .line 159
    :goto_4
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    throw p0
.end method

.method public final getDumpableName()Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/SystemServiceManager;

    .line 2
    .line 3
    const-string p0, "SystemServiceManager"

    .line 4
    .line 5
    return-object p0
.end method

.method public final getRuntimeStartUptime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTargetUser(I)Lcom/android/server/SystemService$TargetUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/SystemService$TargetUser;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final newTargetUser(I)Lcom/android/server/SystemService$TargetUser;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemServiceManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "No UserInfo for "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/android/server/SystemService$TargetUser;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public final onUser(ILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No TargetUser for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    return-void
.end method

.method public final onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V
    .locals 26

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 5
    const-string v14, "CompletedEvent"

    const-string v15, "Start"

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v7

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ssm."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "User-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling on"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " (from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 9
    :goto_0
    const-string v5, "SystemServiceManager"

    .line 10
    invoke-static {v0, v1, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v16, 0x0

    goto :goto_2

    :cond_1
    const/16 v16, 0x1

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v7, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move/from16 v16, v0

    :goto_2
    if-eqz v16, :cond_4

    .line 13
    iget v0, v8, Lcom/android/server/SystemServiceManager;->mNumUserPoolThreads:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 14
    :goto_3
    iget-object v0, v8, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v1, :cond_f

    .line 15
    iget-object v0, v8, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/SystemService;

    .line 16
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {v8, v12}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v11, :cond_5

    .line 18
    invoke-virtual {v8, v11}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    move-result v0

    :cond_5
    if-nez v0, :cond_6

    .line 19
    const-string v0, "Skipping "

    const-string v8, " on "

    .line 20
    invoke-static {v7, v0, v10, v6, v8}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    invoke-static {v0, v4, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v21, v1

    move-object/from16 v24, v5

    move/from16 v25, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v14, v2

    move-object v15, v6

    move v13, v7

    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_13

    :cond_6
    if-eqz v16, :cond_a

    .line 22
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v0, 0x1

    goto :goto_7

    .line 23
    :cond_9
    sget v0, Lcom/android/server/SystemServiceManager;->sOtherServicesStartIndex:I

    if-lt v13, v0, :cond_7

    goto :goto_6

    :goto_7
    if-eqz v0, :cond_a

    const/16 v18, 0x1

    goto :goto_8

    :cond_a
    const/16 v18, 0x0

    :goto_8
    if-nez v18, :cond_b

    .line 24
    const-string/jumbo v0, "ssm.on"

    const-string v3, "_"

    .line 25
    invoke-static {v7, v0, v10, v6, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 27
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 28
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    sparse-switch v0, :sswitch_data_0

    goto :goto_a

    :sswitch_0
    :try_start_1
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x6

    goto :goto_b

    :catch_0
    move-exception v0

    move/from16 v21, v1

    move-object v3, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v1, p0

    :goto_9
    move-object v14, v2

    move-object v15, v6

    move v13, v7

    move-object v2, v8

    goto/16 :goto_11

    :sswitch_1
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_b

    :sswitch_2
    const-string v0, "Stop"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    goto :goto_b

    :sswitch_3
    const-string v0, "Unlocked"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    goto :goto_b

    :sswitch_4
    const-string v0, "Unlocking"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_b

    :sswitch_5
    const-string v0, "Cleanup"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_c

    const/4 v0, 0x5

    goto :goto_b

    :sswitch_6
    :try_start_2
    const-string v0, "Switch"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v0, -0x1

    :goto_b
    packed-switch v0, :pswitch_data_0

    .line 29
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v21, v1

    :try_start_4
    const-string v1, " what?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    :goto_c
    move-object/from16 v1, p0

    move-object v3, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    goto :goto_9

    :catch_2
    move-exception v0

    move/from16 v21, v1

    goto :goto_c

    :pswitch_0
    move/from16 v21, v1

    .line 30
    :try_start_5
    new-instance v0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v1, v0

    move-object v3, v2

    move-object/from16 v2, p0

    move-object/from16 v22, v14

    move-object v14, v3

    move-object/from16 v3, p1

    move-object/from16 v17, v4

    move-object/from16 v23, v15

    const/4 v15, 0x0

    move-object/from16 v4, p4

    move-object/from16 v24, v5

    move-object/from16 v5, p5

    move-object v15, v6

    move-object/from16 v6, v17

    move/from16 v25, v13

    move v13, v7

    move-object v7, v8

    :try_start_6
    invoke-direct/range {v1 .. v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;Ljava/lang/String;Lcom/android/server/SystemService;)V

    .line 31
    invoke-interface {v14, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_d
    move-object/from16 v1, p0

    move-object v2, v8

    goto/16 :goto_12

    :catch_3
    move-exception v0

    :goto_e
    move-object/from16 v1, p0

    :goto_f
    move-object v2, v8

    :goto_10
    move-object/from16 v3, v17

    goto/16 :goto_11

    :catch_4
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v14, v2

    move-object v15, v6

    move v13, v7

    goto :goto_e

    :pswitch_1
    move/from16 v21, v1

    move-object/from16 v17, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v14, v2

    move-object v15, v6

    move v13, v7

    .line 32
    invoke-virtual {v8, v12}, Lcom/android/server/SystemService;->onUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_d

    :pswitch_2
    move/from16 v21, v1

    move-object/from16 v17, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v14, v2

    move-object v15, v6

    move v13, v7

    .line 33
    invoke-virtual {v8, v12}, Lcom/android/server/SystemService;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_d

    :pswitch_3
    move/from16 v21, v1

    move-object/from16 v17, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v14, v2

    move-object v15, v6

    move v13, v7

    .line 34
    invoke-virtual {v8, v12}, Lcom/android/server/SystemService;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_d

    :pswitch_4
    move/from16 v21, v1

    move-object/from16 v17, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v14, v2

    move-object v15, v6

    move v13, v7

    .line 35
    invoke-virtual {v8, v12}, Lcom/android/server/SystemService;->onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_d

    :pswitch_5
    move/from16 v21, v1

    move-object/from16 v17, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object v14, v2

    move-object v15, v6

    move v13, v7

    if-eqz v18, :cond_d

    .line 36
    :try_start_7
    new-instance v0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda3;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v1, p0

    move-object v2, v8

    :try_start_8
    invoke-direct {v0, v1, v9, v2, v12}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService;Lcom/android/server/SystemService$TargetUser;)V

    .line 37
    invoke-interface {v14, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_12

    :catch_5
    move-exception v0

    goto :goto_10

    :catch_6
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_f

    :cond_d
    move-object/from16 v1, p0

    move-object v2, v8

    .line 38
    invoke-virtual {v2, v12}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    goto :goto_12

    :pswitch_6
    move/from16 v21, v1

    move-object/from16 v17, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v1, p0

    move-object v14, v2

    move-object v15, v6

    move v13, v7

    move-object v2, v8

    .line 39
    invoke-virtual {v2, v11, v12}, Lcom/android/server/SystemService;->onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_12

    :catch_7
    move-exception v0

    move/from16 v21, v1

    move-object/from16 v17, v4

    move-object/from16 v24, v5

    move/from16 v25, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v1, p0

    move-object v14, v2

    move-object v15, v6

    move v13, v7

    goto/16 :goto_f

    .line 40
    :goto_11
    invoke-static {v10, v12, v3, v0}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_12
    if-nez v18, :cond_e

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, v3, v19

    const-string/jumbo v0, "on"

    .line 42
    invoke-static {v13, v0, v10, v15}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 43
    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    goto/16 :goto_5

    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_5

    :goto_13
    add-int/lit8 v0, v25, 0x1

    move-object v8, v1

    move v7, v13

    move-object v2, v14

    move-object v6, v15

    move/from16 v1, v21

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    move-object/from16 v5, v24

    move v13, v0

    goto/16 :goto_4

    :cond_f
    move-object v14, v2

    const/4 v5, 0x0

    if-eqz v16, :cond_10

    .line 45
    invoke-interface {v14}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 46
    :try_start_9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-interface {v14, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_14

    :catch_8
    move-exception v0

    .line 47
    const-string v1, "(user lifecycle threadpool was interrupted)"

    invoke-static {v10, v12, v1, v0}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V

    move v4, v5

    :goto_14
    if-nez v4, :cond_10

    .line 48
    const-string v0, "(user lifecycle threadpool was not terminated)"

    const/4 v1, 0x0

    invoke-static {v10, v12, v0, v1}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 49
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6b9f5cac -> :sswitch_6
        -0x69b6117c -> :sswitch_5
        -0xe559e02 -> :sswitch_4
        -0x8b870fd -> :sswitch_3
        0x277c22 -> :sswitch_2
        0x4c7d442 -> :sswitch_1
        0x200e8f2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onUserSwitching(II)V
    .locals 9

    .line 1
    const-string v0, "No TargetUser for "

    .line 2
    .line 3
    const-string/jumbo v1, "switchUser("

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/16 v3, 0x7583

    .line 19
    .line 20
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 24
    .line 25
    monitor-enter v2

    .line 26
    :try_start_0
    iget-object v3, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->newTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    move-object v6, p1

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eq p1, v3, :cond_1

    .line 43
    .line 44
    const-string v3, "SystemServiceManager"

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ","

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, "): mCurrentUser is "

    .line 63
    .line 64
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    .line 68
    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", it should be "

    .line 73
    .line 74
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object p1, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/SystemServiceManager;->getTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    iput-object v7, p0, Lcom/android/server/SystemServiceManager;->mCurrentUser:Lcom/android/server/SystemService$TargetUser;

    .line 95
    .line 96
    if-eqz v7, :cond_2

    .line 97
    .line 98
    const/4 p1, 0x1

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const/4 p1, 0x0

    .line 101
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    const-string v5, "Switch"

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    move-object v3, p0

    .line 125
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    throw p0
.end method

.method public final setSafeMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/SystemServiceManager;->mSafeMode:Z

    .line 2
    .line 3
    return-void
.end method

.method public final startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "OnBootPhase_"

    .line 3
    .line 4
    iget v2, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 5
    .line 6
    if-le p2, v2, :cond_7

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 9
    .line 10
    const-string v2, "SystemServiceManager"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "Starting phase "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v4, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 20
    .line 21
    invoke-static {v3, v4, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x0

    .line 46
    move v3, v2

    .line 47
    :goto_0
    if-ge v3, v1, :cond_2

    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Lcom/android/server/SystemService;

    .line 56
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v8, "OnBootPhase_"

    .line 67
    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v8, "_"

    .line 75
    .line 76
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string/jumbo v7, "sys.isrb.wificrash"

    .line 98
    .line 99
    .line 100
    invoke-static {v7, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_0

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    const-string v8, "Wifi"

    .line 115
    .line 116
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-ltz v7, :cond_0

    .line 121
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 123
    .line 124
    .line 125
    move-result-wide v7

    .line 126
    sub-long/2addr v7, v5

    .line 127
    const-string/jumbo v5, "onBootPhase"

    .line 128
    .line 129
    .line 130
    invoke-static {v7, v8, v4, v5, p2}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :cond_0
    :try_start_1
    iget v7, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 141
    .line 142
    invoke-virtual {v4, v7}, Lcom/android/server/SystemService;->onBootPhase(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    .line 145
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 146
    .line 147
    .line 148
    move-result-wide v7

    .line 149
    sub-long/2addr v7, v5

    .line 150
    const-string/jumbo v5, "onBootPhase"

    .line 151
    .line 152
    .line 153
    invoke-static {v7, v8, v4, v5, p2}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 157
    .line 158
    .line 159
    :goto_1
    add-int/2addr v3, v0

    .line 160
    goto :goto_0

    .line 161
    :catch_0
    move-exception p2

    .line 162
    const-string v0, "ISRB_BOOT"

    .line 163
    .line 164
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_1

    .line 173
    .line 174
    const-string v0, "SystemServiceManager"

    .line 175
    .line 176
    const-string/jumbo v1, "startBootPhase isrb setname "

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v2, "Failed to boot service "

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v2, ": onBootPhase threw an exception during phase "

    .line 217
    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget p0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 222
    .line 223
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .line 232
    .line 233
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    :cond_2
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 235
    .line 236
    .line 237
    const/16 v1, 0x3e8

    .line 238
    .line 239
    if-ne p2, v1, :cond_6

    .line 240
    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 242
    .line 243
    .line 244
    move-result-wide v1

    .line 245
    iget-wide v3, p0, Lcom/android/server/SystemServiceManager;->mRuntimeStartUptime:J

    .line 246
    .line 247
    sub-long/2addr v1, v3

    .line 248
    const-string p0, "TotalBootTime"

    .line 249
    .line 250
    invoke-virtual {p1, p0, v1, v2}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 251
    .line 252
    .line 253
    sget-boolean p0, Lcom/android/server/SystemServerInitThreadPool;->IS_DEBUGGABLE:Z

    .line 254
    .line 255
    const-string p0, "Cannot shutdown. Unstarted tasks "

    .line 256
    .line 257
    const-string p1, "SystemServerInitThreadPool"

    .line 258
    .line 259
    const-string p2, "Shutdown requested"

    .line 260
    .line 261
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    sget-object p1, Lcom/android/server/SystemServerInitThreadPool;->LOCK:Ljava/lang/Object;

    .line 265
    .line 266
    monitor-enter p1

    .line 267
    :try_start_3
    new-instance p2, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 268
    .line 269
    invoke-direct {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string v1, "WaitInitThreadPoolShutdown"

    .line 273
    .line 274
    invoke-virtual {p2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 278
    .line 279
    if-nez v1, :cond_3

    .line 280
    .line 281
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 282
    .line 283
    .line 284
    const-string p0, "SystemServerInitThreadPool"

    .line 285
    .line 286
    const-string p2, "Already shutdown"

    .line 287
    .line 288
    new-instance v0, Ljava/lang/Exception;

    .line 289
    .line 290
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-static {p0, p2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .line 295
    .line 296
    monitor-exit p1

    .line 297
    goto/16 :goto_3

    .line 298
    .line 299
    :catchall_1
    move-exception p0

    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :cond_3
    iget-object v1, v1, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 303
    .line 304
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 305
    :try_start_4
    sget-object v2, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 306
    .line 307
    iput-boolean v0, v2, Lcom/android/server/SystemServerInitThreadPool;->mShutDown:Z

    .line 308
    .line 309
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 310
    :try_start_5
    iget-object v0, v2, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    .line 311
    .line 312
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 313
    .line 314
    .line 315
    :try_start_6
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 316
    .line 317
    iget-object v0, v0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    .line 318
    .line 319
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 320
    .line 321
    const-wide/16 v2, 0x4e20

    .line 322
    .line 323
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 324
    .line 325
    .line 326
    move-result v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 327
    if-nez v0, :cond_4

    .line 328
    .line 329
    :try_start_7
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->dumpStackTraces()V

    .line 330
    .line 331
    .line 332
    :cond_4
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 333
    .line 334
    iget-object v1, v1, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    .line 335
    .line 336
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    if-eqz v0, :cond_5

    .line 341
    .line 342
    const/4 p0, 0x0

    .line 343
    sput-object p0, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 344
    .line 345
    const-string p0, "SystemServerInitThreadPool"

    .line 346
    .line 347
    const-string v0, "Shutdown successful"

    .line 348
    .line 349
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 353
    .line 354
    .line 355
    monitor-exit p1

    .line 356
    goto :goto_3

    .line 357
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .line 361
    .line 362
    sget-object v2, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 363
    .line 364
    iget-object v2, v2, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 365
    .line 366
    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 367
    :try_start_8
    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 368
    .line 369
    iget-object v3, v3, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 370
    .line 371
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 372
    .line 373
    .line 374
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 375
    :try_start_9
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 376
    .line 377
    .line 378
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 379
    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string p0, " Unfinished tasks "

    .line 389
    .line 390
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p0

    .line 400
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 404
    :catchall_2
    move-exception p0

    .line 405
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 406
    :try_start_b
    throw p0

    .line 407
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 408
    .line 409
    .line 410
    move-result-object p0

    .line 411
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 412
    .line 413
    .line 414
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->dumpStackTraces()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 418
    .line 419
    .line 420
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 421
    .line 422
    const-string p2, "SystemServerInitThreadPool init interrupted"

    .line 423
    .line 424
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 428
    :catchall_3
    move-exception p0

    .line 429
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 430
    :try_start_d
    throw p0

    .line 431
    :goto_2
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 432
    throw p0

    .line 433
    :cond_6
    :goto_3
    return-void

    .line 434
    :goto_4
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 435
    .line 436
    .line 437
    throw p0

    .line 438
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 439
    .line 440
    const-string p1, "Next phase must be larger than previous"

    .line 441
    .line 442
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw p0
.end method

.method public final startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    .locals 13

    .line 4
    const-string v0, ": service must have a public constructor with a Context argument"

    const-class v1, Lcom/android/server/SystemService;

    const-string/jumbo v2, "startService isrb setname"

    const-string v3, "ISRB_BOOT"

    const-string v4, "SystemServiceManager"

    const-string v5, "Failed to create service "

    const-string/jumbo v6, "startService isrb return :"

    const-string v7, "Failed to create "

    const-string v8, "StartService "

    const-string v9, "Starting "

    const-wide/32 v10, 0x80000

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 5
    invoke-virtual {v9, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v8, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 8
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    const-string/jumbo v1, "sys.isrb.crashservice"

    const-string v7, "ISRB"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v12}, Lcom/samsung/isrb/IsrbHooks;->canSkip(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    .line 13
    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v1, v7

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/SystemService;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    .line 17
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {v12}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": service constructor threw an exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 21
    :goto_1
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {v12}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 25
    :goto_2
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 26
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v12}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 28
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 29
    :goto_3
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {v12}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 32
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": service could not be instantiated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 33
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": service must extend "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    :goto_4
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 36
    throw p0
.end method

.method public final startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/android/server/SystemServiceManager;->loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object p0

    return-object p0
.end method

.method public final startService(Lcom/android/server/SystemService;)V
    .locals 4

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SystemServiceManager"

    if-eqz v1, :cond_0

    .line 39
    const-string p0, "Not starting an already started service "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/server/SystemServiceManager;->mServiceClassnames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 43
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/SystemService;->onStart()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const/4 p0, 0x0

    .line 45
    const-string/jumbo v0, "onStart"

    invoke-static {v2, v3, p1, v0, p0}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception p0

    .line 46
    const-string v0, "ISRB_BOOT"

    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    const-string/jumbo v0, "startService isrb setname"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/isrb/IsrbHooks;->saveCrashServiceName(Ljava/lang/String;)V

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to start service "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": onStart threw an exception"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-class v0, Lcom/android/server/SystemServiceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p2, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/nio/file/Path;->getNameCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x2

    .line 19
    if-lt v3, v4, :cond_0

    .line 20
    .line 21
    invoke-interface {v2, v1}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "apex"

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-interface {v2, v3}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4, v2}, Lcom/android/server/pm/ApexManager;->getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SystemServiceManager;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-wide/32 v5, 0x40000000

    .line 61
    .line 62
    .line 63
    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 72
    .line 73
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    and-int/lit16 v2, v2, 0x100

    .line 76
    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    move v1, v3

    .line 80
    :catch_0
    :cond_0
    invoke-static {p2, v0, v1}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->getOrCreateClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldalvik/system/PathClassLoader;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p1, p2}, Lcom/android/server/SystemServiceManager;->loadClassFromLoader(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final updateOtherServicesStartIndex()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/SystemServiceManager;->mCurrentPhase:I

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/SystemServiceManager;->mServices:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sput p0, Lcom/android/server/SystemServiceManager;->sOtherServicesStartIndex:I

    .line 15
    .line 16
    :goto_0
    return-void
.end method
