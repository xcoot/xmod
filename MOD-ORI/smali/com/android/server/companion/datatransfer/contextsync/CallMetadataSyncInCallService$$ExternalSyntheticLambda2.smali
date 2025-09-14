.class public final synthetic Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    .line 2
    .line 3
    check-cast p1, Landroid/telecom/Call;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mTelecomCallback:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getMainThreadHandler()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p1, v0, p0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
