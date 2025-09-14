.class public final Lcom/android/server/locksettings/LockSettingsService$7;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    const-string p2, "Unable to remove face, error: "

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const-string p2, "LockSettingsService"

    .line 17
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 22
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 25
    return-void
.end method

.method public final onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 8
    :cond_0
    return-void
.end method
