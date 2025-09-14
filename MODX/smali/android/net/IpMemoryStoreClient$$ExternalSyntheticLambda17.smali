.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/net/ipmemorystore/Blob;

.field public final synthetic f$5:Landroid/net/ipmemorystore/OnStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 6
    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$3:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$4:Landroid/net/ipmemorystore/Blob;

    .line 14
    iput-object p6, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$5:Landroid/net/ipmemorystore/OnStatusListener;

    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$0:Landroid/net/IpMemoryStoreClient;

    .line 3
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$3:Ljava/lang/String;

    .line 9
    iget-object v4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$4:Landroid/net/ipmemorystore/Blob;

    .line 11
    iget-object v5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda17;->f$5:Landroid/net/ipmemorystore/OnStatusListener;

    .line 13
    move-object v6, p1

    .line 14
    check-cast v6, Landroid/net/IIpMemoryStore;

    .line 16
    invoke-static/range {v0 .. v6}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$oxBl3Mx7RwhlNwWErUzS1J8-yoM(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V

    .line 19
    return-void
.end method
