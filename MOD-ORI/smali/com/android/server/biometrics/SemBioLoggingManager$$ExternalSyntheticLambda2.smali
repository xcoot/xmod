.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;->f$3:I

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    new-instance v4, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 13
    .line 14
    invoke-direct {v4}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    iput-wide v5, v4, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 22
    .line 23
    iput-object v1, v4, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v2, v4, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v1, p0, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    sget v1, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    .line 39
    .line 40
    if-lt p0, v1, :cond_0

    .line 41
    .line 42
    iget-object p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 46
    .line 47
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
    monitor-exit v3

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method
