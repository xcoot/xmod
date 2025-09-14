.class public final Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFailed:Z

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mFailed:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final packageDeleted(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    const-string p2, "Failed to delete package: "

    .line 5
    .line 6
    const-string v1, "DevicePolicyManager"

    .line 7
    .line 8
    invoke-static {p2, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mFailed:Z

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
