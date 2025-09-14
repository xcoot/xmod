.class public final Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AppStartInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppStartInfoTracker;Landroid/app/IApplicationStartInfoCompleteListener;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mUid:I

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p2}, Landroid/app/IApplicationStartInfoCompleteListener;->asBinder()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mUid:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/am/AppStartInfoTracker;->removeStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;IZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
