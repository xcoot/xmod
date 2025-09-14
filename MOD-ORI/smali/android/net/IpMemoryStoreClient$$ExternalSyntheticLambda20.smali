.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 4
    .line 5
    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;->f$2:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    .line 15
    .line 16
    check-cast p1, Landroid/net/IIpMemoryStore;

    .line 17
    .line 18
    invoke-static {v0, v1, p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$A1dJWBt0zGMwIg94ZNfwEJPFkqQ(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Landroid/net/IIpMemoryStore;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 23
    .line 24
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;->f$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroid/net/ipmemorystore/NetworkAttributes;

    .line 27
    .line 28
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda20;->f$2:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    .line 31
    .line 32
    check-cast p1, Landroid/net/IIpMemoryStore;

    .line 33
    .line 34
    invoke-static {v0, v1, p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$m-MiiJpkUlbFj594pow56N1SWac(Landroid/net/IpMemoryStoreClient;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
