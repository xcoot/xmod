.class public final Lcom/android/server/AppStateTrackerImpl$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$2;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final onAutoRestrictedBucketFeatureFlagChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$2;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 3
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    .line 5
    const/16 v0, 0xb

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 18
    return-void
.end method
