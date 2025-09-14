.class public interface abstract Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static toAIDL(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;-><init>(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;)V
.end method
