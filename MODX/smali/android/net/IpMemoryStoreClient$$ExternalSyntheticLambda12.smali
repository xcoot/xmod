.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/IIpMemoryStore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 3
    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$0:Landroid/net/IIpMemoryStore;

    .line 5
    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    .line 9
    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$3:Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/String;

    .line 10
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$3:Ljava/lang/Object;

    .line 12
    check-cast v1, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    .line 14
    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$0:Landroid/net/IIpMemoryStore;

    .line 16
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    .line 18
    invoke-static {v2, p0, v0, v1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$Gtfbn8H-Hmv1h-JCbed5WTdnnEM(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    .line 24
    check-cast v0, Landroid/net/ipmemorystore/NetworkAttributes;

    .line 26
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$3:Ljava/lang/Object;

    .line 28
    check-cast v1, Landroid/net/ipmemorystore/OnStatusListener;

    .line 30
    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$0:Landroid/net/IIpMemoryStore;

    .line 32
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    .line 34
    invoke-static {v2, p0, v0, v1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$tPwd2hc2Euvwob2T0xc07lBBUjs(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V

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
