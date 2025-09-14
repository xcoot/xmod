.class public final Lcom/android/server/sepunion/cover/CoverServiceManager$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$3;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$3;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$3;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager;->mCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
