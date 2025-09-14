.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mImpl:Landroid/net/ipsec/ike/IkeSession;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v7, Landroid/net/ipsec/ike/IkeSession;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v4, Landroid/os/HandlerExecutor;

    .line 9
    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v4, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    move-object v0, v7

    .line 21
    move-object v2, p2

    .line 22
    move-object v3, p3

    .line 23
    move-object v5, p4

    .line 24
    move-object v6, p5

    .line 25
    invoke-direct/range {v0 .. v6}, Landroid/net/ipsec/ike/IkeSession;-><init>(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    .line 26
    .line 27
    .line 28
    iput-object v7, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 29
    .line 30
    return-void
.end method
