.class public interface abstract Landroid/net/ipmemorystore/OnBlobRetrievedListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;

    .line 3
    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnBlobRetrievedListener$1;-><init>(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract onBlobRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V
.end method
