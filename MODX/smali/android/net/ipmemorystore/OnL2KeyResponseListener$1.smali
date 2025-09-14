.class public final Landroid/net/ipmemorystore/OnL2KeyResponseListener$1;
.super Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$listener:Landroid/net/ipmemorystore/OnL2KeyResponseListener;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/ipmemorystore/OnL2KeyResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    .line 3
    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "d5ea5eb3ddbdaa9a986ce6ba70b0804ca3e39b0c"

    .line 4
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/16 p0, 0xa

    .line 3
    return p0
.end method

.method public final onL2KeyResponse(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/net/ipmemorystore/OnL2KeyResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    new-instance v0, Landroid/net/ipmemorystore/Status;

    .line 7
    invoke-direct {v0, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    .line 10
    invoke-interface {p0, v0, p2}, Landroid/net/ipmemorystore/OnL2KeyResponseListener;->onL2KeyResponse(Landroid/net/ipmemorystore/Status;Ljava/lang/String;)V

    .line 13
    :cond_0
    return-void
.end method
