.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/IIpMemoryStore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;->f$0:Landroid/net/IIpMemoryStore;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;->f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;->f$3:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;->f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    .line 4
    .line 5
    iget-object v2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;->f$0:Landroid/net/IIpMemoryStore;

    .line 6
    .line 7
    iget-object v3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, p0, v0, v1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$Lwi-UV2KJSgpGNur1LVnGMVszhA(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
