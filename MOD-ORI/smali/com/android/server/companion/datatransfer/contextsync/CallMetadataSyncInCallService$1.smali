.class public final Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;
.super Landroid/telecom/Call$Callback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mNumberOfActiveSyncAssociations:I

    .line 4
    .line 5
    if-lez v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->mCurrentCalls:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;->updateCallDetails(Landroid/telecom/Call$Details;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getUserId()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->sync(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "CallMetadataIcs"

    .line 31
    .line 32
    const-string p1, "Could not update details for nonexistent call"

    .line 33
    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method
