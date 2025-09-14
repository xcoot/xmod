.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

.field final mH:Landroid/os/Handler;

.field public mIsDozeMode:Z

.field public mIsHlpmMode:Z

.field final mPendingRequestBeforeListener:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    .line 13
    return-void
.end method
