.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/content/Context;

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$1:I

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$2:J

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$3:I

    .line 11
    .line 12
    iput p6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$4:I

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$5:Landroid/content/Context;

    .line 15
    .line 16
    iput-boolean p8, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$6:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$1:I

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$2:J

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$3:I

    .line 8
    .line 9
    iget v5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$4:I

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$5:Landroid/content/Context;

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;->f$6:Z

    .line 14
    .line 15
    iget-object v7, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 16
    .line 17
    monitor-enter v7

    .line 18
    :try_start_0
    iget-object v8, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v8

    .line 32
    iput-wide v8, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 33
    .line 34
    iput-wide v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 35
    .line 36
    const-string v2, "N"

    .line 37
    .line 38
    iput-object v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 39
    .line 40
    iput v4, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 41
    .line 42
    iput v5, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    new-instance v0, Landroid/content/Intent;

    .line 52
    .line 53
    const-string/jumbo v2, "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "action_type"

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v2, "no_match_reason"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v6, v0, p0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    :goto_0
    monitor-exit v7

    .line 78
    return-void

    .line 79
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method
