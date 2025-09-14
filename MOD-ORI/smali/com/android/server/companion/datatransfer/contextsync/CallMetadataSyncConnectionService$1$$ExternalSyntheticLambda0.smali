.class public final synthetic Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;->mCall:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$Call;->mId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    new-instance p0, Landroid/telecom/DisconnectCause;

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-direct {p0, v0}, Landroid/telecom/DisconnectCause;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method
