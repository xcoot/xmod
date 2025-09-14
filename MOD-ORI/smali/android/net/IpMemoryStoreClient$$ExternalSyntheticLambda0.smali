.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 4
    .line 5
    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

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
    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    .line 17
    .line 18
    check-cast p1, Landroid/net/IIpMemoryStore;

    .line 19
    .line 20
    invoke-static {v0, v1, v2, p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$3NXT457T82CtcVsg8GobBtlPKQ4(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;Landroid/net/IIpMemoryStore;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 25
    .line 26
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Landroid/net/ipmemorystore/NetworkAttributes;

    .line 31
    .line 32
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroid/net/ipmemorystore/OnStatusListener;

    .line 35
    .line 36
    check-cast p1, Landroid/net/IIpMemoryStore;

    .line 37
    .line 38
    invoke-static {v0, v1, v2, p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$FtdNBOd4lhXUNlGtVAFL2R3nqEc(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
