.class public final Landroid/net/IpSecMigrateInfoParcel$Builder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field private direction:I

.field private interfaceId:I

.field private newDestinationAddress:Ljava/lang/String;

.field private newSourceAddress:Ljava/lang/String;

.field private oldDestinationAddress:Ljava/lang/String;

.field private oldSourceAddress:Ljava/lang/String;

.field private requestId:I

.field private selAddrFamily:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->requestId:I

    .line 7
    iput v0, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->selAddrFamily:I

    .line 9
    iput v0, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->direction:I

    .line 11
    iput v0, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->interfaceId:I

    .line 13
    return-void
.end method


# virtual methods
.method public build()Landroid/net/IpSecMigrateInfoParcel;
    .locals 10

    .line 1
    new-instance v9, Landroid/net/IpSecMigrateInfoParcel;

    .line 3
    iget v1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->requestId:I

    .line 5
    iget v2, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->selAddrFamily:I

    .line 7
    iget v3, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->direction:I

    .line 9
    iget-object v4, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->oldSourceAddress:Ljava/lang/String;

    .line 11
    iget-object v5, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->oldDestinationAddress:Ljava/lang/String;

    .line 13
    iget-object v6, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->newSourceAddress:Ljava/lang/String;

    .line 15
    iget-object v7, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->newDestinationAddress:Ljava/lang/String;

    .line 17
    iget v8, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->interfaceId:I

    .line 19
    move-object v0, v9

    .line 20
    invoke-direct/range {v0 .. v8}, Landroid/net/IpSecMigrateInfoParcel;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    return-object v9
.end method

.method public setDirection(I)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->direction:I

    .line 3
    return-object p0
.end method

.method public setInterfaceId(I)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->interfaceId:I

    .line 3
    return-object p0
.end method

.method public setNewDestinationAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->newDestinationAddress:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setNewSourceAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->newSourceAddress:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setOldDestinationAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->oldDestinationAddress:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setOldSourceAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->oldSourceAddress:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setRequestId(I)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->requestId:I

    .line 3
    return-object p0
.end method

.method public setSelAddrFamily(I)Landroid/net/IpSecMigrateInfoParcel$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/IpSecMigrateInfoParcel$Builder;->selAddrFamily:I

    .line 3
    return-object p0
.end method
