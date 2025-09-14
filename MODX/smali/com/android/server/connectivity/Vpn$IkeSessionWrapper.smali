.class public Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mImpl:Landroid/net/ipsec/ike/IkeSession;


# direct methods
.method public constructor <init>(Landroid/net/ipsec/ike/IkeSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;->mImpl:Landroid/net/ipsec/ike/IkeSession;

    .line 6
    return-void
.end method
