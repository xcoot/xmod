.class public final synthetic Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    .line 3
    check-cast p1, Landroid/telecom/Call;

    .line 5
    sget v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->$r8$clinit:I

    .line 7
    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    .line 9
    invoke-virtual {p0}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;-><init>(Landroid/content/Context;Landroid/telecom/Call;Landroid/telecom/CallAudioState;)V

    .line 16
    return-object v0
.end method
