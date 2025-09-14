.class public final Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSemaphore:Ljava/util/concurrent/Semaphore;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mUserId:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p1, "android.intent.extra.user_handle"

    .line 15
    .line 16
    const/16 v0, -0x2710

    .line 17
    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget p2, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mUserId:I

    .line 23
    .line 24
    if-ne p1, p2, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
