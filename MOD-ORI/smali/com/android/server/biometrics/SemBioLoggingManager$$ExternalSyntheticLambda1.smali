.class public final synthetic Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/SemBioLoggingManager;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iput v2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpScreenStatus:I

    .line 23
    .line 24
    iput p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpAlphaMaskLvl:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v3

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method
