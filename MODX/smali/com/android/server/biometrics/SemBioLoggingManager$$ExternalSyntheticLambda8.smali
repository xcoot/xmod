.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 6
    iput-wide p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda8;->f$1:J

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 3
    iget-wide v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda8;->f$1:J

    .line 5
    const-string/jumbo p0, "fpSetAuthenticatorId: "

    .line 8
    iget-object v3, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    .line 10
    monitor-enter v3

    .line 11
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 13
    const-string v5, "MM/dd HH:mm:ss"

    .line 15
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 17
    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-wide/16 v6, 0x0

    .line 27
    cmp-long v6, v1, v6

    .line 29
    if-nez v6, :cond_0

    .line 31
    const-string v1, "0L"

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_3

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    long-to-int v1, v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", "

    .line 48
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v1, Ljava/util/Date;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    move-result-wide v6

    .line 57
    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 60
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    iput-object v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpAuthenticatorId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    goto :goto_2

    .line 74
    :goto_1
    :try_start_1
    const-string v1, "BiometricStats"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_2
    monitor-exit v3

    .line 96
    return-void

    .line 97
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw p0
.end method
