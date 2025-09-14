.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/IIpMemoryStore;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;->f$0:Landroid/net/IIpMemoryStore;

    .line 4
    .line 5
    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/net/ipmemorystore/NetworkAttributes;

    .line 9
    .line 10
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;->f$0:Landroid/net/IIpMemoryStore;

    .line 15
    .line 16
    invoke-static {p0, v0, v1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$F4PDL_SdP2inoqkygo2e8UmmOOk(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    .line 27
    .line 28
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda6;->f$0:Landroid/net/IIpMemoryStore;

    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$rscP1A28INZB0xb8E8vEaCkPx1g(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
