.class public final synthetic Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field public final synthetic f$1:Landroid/content/rollback/RollbackInfo;

.field public final synthetic f$2:Landroid/content/pm/VersionedPackage;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;->f$1:Landroid/content/rollback/RollbackInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;->f$2:Landroid/content/pm/VersionedPackage;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;->f$1:Landroid/content/rollback/RollbackInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;->f$2:Landroid/content/pm/VersionedPackage;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;->f$3:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    check-cast p1, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 14
    .line 15
    .line 16
    const-string v4, "android.content.rollback.extra.STATUS"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 36
    .line 37
    .line 38
    iget-object v4, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    .line 39
    .line 40
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    .line 41
    .line 42
    invoke-direct {v6, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Ljava/io/PrintWriter;

    .line 46
    .line 47
    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 48
    .line 49
    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const-string v7, ""

    .line 60
    .line 61
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v5, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v8, ","

    .line 70
    .line 71
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 82
    .line 83
    .line 84
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :goto_1
    const-string v5, "RollbackPackageHealthObserver"

    .line 92
    .line 93
    const-string v6, "Failed to save last staged rollback id"

    .line 94
    .line 95
    invoke-static {v5, v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 99
    .line 100
    .line 101
    :goto_2
    const/4 p1, 0x4

    .line 102
    invoke-static {v2, p1, v3, p0}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_1
    const/4 p1, 0x2

    .line 107
    invoke-static {v2, p1, v3, p0}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_2
    const/4 p1, 0x3

    .line 112
    invoke-static {v2, p1, v3, p0}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_3
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_3

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 126
    .line 127
    .line 128
    iget-object p1, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    .line 129
    .line 130
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p1, Landroid/util/ArraySet;

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 140
    .line 141
    .line 142
    iget-object p0, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    .line 143
    .line 144
    check-cast p0, Landroid/util/ArraySet;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-eqz p0, :cond_3

    .line 151
    .line 152
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-static {p0}, Landroid/sysprop/CrashRecoveryProperties;->attemptingReboot(Ljava/lang/Boolean;)V

    .line 155
    .line 156
    .line 157
    iget-object p0, v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    const-class p1, Landroid/os/PowerManager;

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p0, Landroid/os/PowerManager;

    .line 166
    .line 167
    const-string p1, "Rollback staged install"

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_3
    return-void
.end method
