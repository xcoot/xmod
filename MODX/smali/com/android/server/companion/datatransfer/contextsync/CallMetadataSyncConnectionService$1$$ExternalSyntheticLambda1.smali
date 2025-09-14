.class public final synthetic Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;->f$0:I

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;->f$0:I

    .line 3
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;

    .line 5
    check-cast p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 7
    iget-boolean v1, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mIsIdFinalized:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget v1, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mAssociationId:I

    .line 13
    if-ne v0, v1, :cond_0

    .line 15
    iget-object v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 17
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 19
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;->mCalls:Ljava/util/Map;

    .line 21
    check-cast p0, Ljava/util/HashMap;

    .line 23
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 29
    new-instance p0, Landroid/telecom/DisconnectCause;

    .line 31
    const/4 v0, 0x3

    .line 32
    invoke-direct {p0, v0}, Landroid/telecom/DisconnectCause;-><init>(I)V

    .line 35
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    return p0
.end method
