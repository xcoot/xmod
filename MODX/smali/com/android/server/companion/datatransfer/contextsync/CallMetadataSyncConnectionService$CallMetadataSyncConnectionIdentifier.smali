.class final Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAssociationId:I

.field public final mCallId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;->mAssociationId:I

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;->mCallId:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;

    .line 8
    iget v0, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;->mAssociationId:I

    .line 10
    iget v2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;->mAssociationId:I

    .line 12
    if-ne v0, v2, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;->mCallId:Ljava/lang/String;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    iget-object p1, p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;->mCallId:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;->mAssociationId:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnectionIdentifier;->mCallId:Ljava/lang/String;

    .line 9
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    move-result p0

    .line 17
    return p0
.end method
