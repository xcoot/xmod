.class public final Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mRunnable:Ljava/lang/Runnable;

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;->mUid:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;->mUid:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Binder;->setCallingWorkSourceUid(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingWorkSource(J)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingWorkSource(J)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method
