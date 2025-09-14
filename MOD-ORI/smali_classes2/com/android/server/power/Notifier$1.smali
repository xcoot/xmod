.class public final Lcom/android/server/power/Notifier$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/Notifier;

.field public final synthetic val$proximity:Z


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/power/Notifier$1;->val$proximity:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onScreenStateChangeStartedByProximity : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/server/power/Notifier$1;->val$proximity:Z

    .line 10
    .line 11
    const-string v2, "PowerManagerNotifier"

    .line 12
    .line 13
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/android/server/power/Notifier$1;->val$proximity:Z

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget-object p0, v0, Lcom/android/server/power/Notifier;->mScreenOffByProximityIntent:Landroid/content/Intent;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, v0, Lcom/android/server/power/Notifier;->mScreenOnByProximityIntent:Landroid/content/Intent;

    .line 28
    .line 29
    :goto_0
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 30
    .line 31
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
