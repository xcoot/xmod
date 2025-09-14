.class public final Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLocalSender:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;

.field public final mResult:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mLocalSender:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getIntentSender()Landroid/content/IntentSender;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/IntentSender;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mLocalSender:Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver$1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final getResult()Landroid/content/Intent;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->mResult:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method
