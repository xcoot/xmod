.class public final Landroid/net/NetworkFactoryImpl$2;
.super Landroid/net/NetworkProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Landroid/net/NetworkFactoryImpl;


# direct methods
.method public constructor <init>(Landroid/net/NetworkFactoryImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/NetworkFactoryImpl$2;->this$0:Landroid/net/NetworkFactoryImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactoryImpl$2;->this$0:Landroid/net/NetworkFactoryImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onNetworkRequested(Landroid/net/NetworkRequest;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkFactoryImpl$2;->this$0:Landroid/net/NetworkFactoryImpl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleAddRequest(Landroid/net/NetworkRequest;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
