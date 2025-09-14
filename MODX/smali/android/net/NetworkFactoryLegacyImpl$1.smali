.class public final Landroid/net/NetworkFactoryLegacyImpl$1;
.super Landroid/net/NetworkProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Landroid/net/NetworkFactoryLegacyImpl;


# direct methods
.method public constructor <init>(Landroid/net/NetworkFactoryLegacyImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    .line 3
    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryLegacyImpl;->handleRemoveRequest$1(Landroid/net/NetworkRequest;)V

    .line 6
    return-void
.end method

.method public final onNetworkRequested(Landroid/net/NetworkRequest;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/NetworkFactoryLegacyImpl;->handleAddRequest(Landroid/net/NetworkRequest;II)V

    .line 6
    return-void
.end method
