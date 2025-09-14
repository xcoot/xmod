.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/IIpMemoryStore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 3
    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$0:Landroid/net/IIpMemoryStore;

    .line 5
    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    .line 7
    iput-boolean p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$2:Z

    .line 9
    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-boolean v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$2:Z

    .line 8
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    .line 10
    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$0:Landroid/net/IIpMemoryStore;

    .line 12
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    .line 14
    invoke-static {v2, p0, v0, v1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$kw0C-x-oOTHnTWTYjF33o57o8-Q(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-boolean v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$2:Z

    .line 20
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    .line 22
    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$0:Landroid/net/IIpMemoryStore;

    .line 24
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    .line 26
    invoke-static {v2, p0, v0, v1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$kQgPvbRYTAs7OHCT5VWHVYBvR5s(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
