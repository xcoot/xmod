.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/Context;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJILandroid/content/Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$2:J

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$3:I

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$4:Landroid/content/Context;

    .line 13
    .line 14
    iput-boolean p7, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$5:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$2:J

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$3:I

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$4:Landroid/content/Context;

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;->f$5:Z

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 14
    .line 15
    monitor-enter v6

    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v7

    .line 30
    iput-wide v7, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 31
    .line 32
    iput-wide v2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 33
    .line 34
    iput v4, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 35
    .line 36
    new-instance v1, Landroid/content/Intent;

    .line 37
    .line 38
    const-string/jumbo v2, "com.samsung.android.intent.action.BIOMETRIC_EXTRA_INFO"

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "action_type"

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const-string/jumbo v2, "quality_value"

    .line 51
    .line 52
    .line 53
    iget v3, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v5, v1, p0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit v6

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method
