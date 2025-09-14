.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    .line 9
    .line 10
    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$vk0Nh2Qc67PGCXFRrO6ttafnr-w(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    .line 15
    .line 16
    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$-agmG3QnCnTGjpVGuNCsN8Zf7Ko(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast p0, Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    .line 21
    .line 22
    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$EqiuXKS_kMkqzw8-ZS1i2veSvM8(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    check-cast p0, Landroid/net/IIpMemoryStore;

    .line 27
    .line 28
    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$PYxMl-8VTNMxiGLoTuj7FUrL7Ss(Landroid/net/IIpMemoryStore;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_3
    check-cast p0, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    .line 33
    .line 34
    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$CVFuVz16jcHPC8U-Sx6-K762Gvc(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
