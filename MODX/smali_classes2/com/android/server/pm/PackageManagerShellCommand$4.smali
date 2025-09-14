.class public final Lcom/android/server/pm/PackageManagerShellCommand$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic val$userId:I

.field public final synthetic val$waitLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->val$userId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->val$userId:I

    .line 2
    .line 3
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$4;->val$waitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
