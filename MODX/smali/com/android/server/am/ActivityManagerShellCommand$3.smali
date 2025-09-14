.class public final Lcom/android/server/am/ActivityManagerShellCommand$3;
.super Landroid/app/UserSwitchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$switchLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$userId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$switchLatch:Ljava/util/concurrent/CountDownLatch;

    .line 5
    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onUserSwitchComplete(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$userId:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$3;->val$switchLatch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 10
    :cond_0
    return-void
.end method
