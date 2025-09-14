.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJLjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    iput-wide p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$2:J

    .line 10
    iput-object p5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    .line 12
    iput p6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$4:I

    .line 14
    iput p7, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$5:I

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 3
    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$1:I

    .line 5
    iget-wide v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$2:J

    .line 7
    iget-object v4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    .line 9
    iget v5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$4:I

    .line 11
    iget p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;->f$5:I

    .line 13
    iget-object v6, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 15
    monitor-enter v6

    .line 16
    :try_start_0
    iget-object v7, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v7

    .line 22
    check-cast v7, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 24
    if-eqz v7, :cond_0

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    move-result-wide v8

    .line 30
    iput-wide v8, v7, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 32
    iput-wide v2, v7, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 34
    iput-object v4, v7, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 36
    iput v5, v7, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 38
    iput p0, v7, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 40
    invoke-virtual {v0, v7}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 43
    iget-object p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 45
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit v6

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method
