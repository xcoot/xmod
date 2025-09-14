.class public final Landroid/net/NetworkStackClient$NetworkStackConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;


# instance fields
.field public final synthetic this$0:Landroid/net/NetworkStackClient;


# direct methods
.method public constructor <init>(Landroid/net/NetworkStackClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onModuleServiceConnected(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/NetworkStackClient$NetworkStackConnection;->this$0:Landroid/net/NetworkStackClient;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/net/NetworkStackClient;->-$$Nest$mlogi(Landroid/net/NetworkStackClient;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroid/net/NetworkStackClient;->-$$Nest$mregisterNetworkStackService(Landroid/net/NetworkStackClient;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
