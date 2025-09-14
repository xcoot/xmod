.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 4
    .line 5
    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$2:Z

    .line 8
    .line 9
    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$2:Z

    .line 11
    .line 12
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    .line 13
    .line 14
    check-cast p1, Landroid/net/IIpMemoryStore;

    .line 15
    .line 16
    invoke-static {v0, v1, v2, p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$U6AxfDXBAs4ISSIivSALg-8kfCw(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 21
    .line 22
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 23
    .line 24
    iget-boolean v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$2:Z

    .line 25
    .line 26
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    .line 27
    .line 28
    check-cast p1, Landroid/net/IIpMemoryStore;

    .line 29
    .line 30
    invoke-static {v0, v1, v2, p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$HNYtD8BPOyUv7tcyyeuKiVvlE9o(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V

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
