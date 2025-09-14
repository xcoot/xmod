.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;
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

.field public final synthetic f$6:I

.field public final synthetic f$7:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$2:J

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$3:I

    .line 11
    .line 12
    iput p6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$4:I

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$5:Landroid/content/Context;

    .line 15
    .line 16
    iput p8, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$6:I

    .line 17
    .line 18
    iput-boolean p9, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$7:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$2:J

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$3:I

    .line 8
    .line 9
    iget v5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$4:I

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$5:Landroid/content/Context;

    .line 12
    .line 13
    iget v7, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$6:I

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;->f$7:Z

    .line 16
    .line 17
    iget-object v8, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 18
    .line 19
    monitor-enter v8

    .line 20
    :try_start_0
    iget-object v9, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    check-cast v9, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 27
    .line 28
    if-eqz v9, :cond_0

    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v10

    .line 34
    iput-wide v10, v9, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 35
    .line 36
    iput-wide v2, v9, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 37
    .line 38
    const-string v2, "M"

    .line 39
    .line 40
    iput-object v2, v9, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 41
    .line 42
    iput v4, v9, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 43
    .line 44
    iput v5, v9, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 45
    .line 46
    invoke-virtual {v0, v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 52
    .line 53
    .line 54
    iget-boolean v0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    new-instance v0, Landroid/content/Intent;

    .line 59
    .line 60
    const-string/jumbo v1, "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "action_type"

    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    const-string/jumbo v1, "id"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v6, v0, p0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    :goto_0
    monitor-exit v8

    .line 85
    return-void

    .line 86
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method
