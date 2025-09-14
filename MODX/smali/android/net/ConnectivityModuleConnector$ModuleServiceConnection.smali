.class public final Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mModuleServiceCallback:Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;

.field public final mPackageName:Ljava/lang/String;

.field public final synthetic this$0:Landroid/net/ConnectivityModuleConnector;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->this$0:Landroid/net/ConnectivityModuleConnector;

    .line 6
    iput-object p2, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mPackageName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mModuleServiceCallback:Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;

    .line 10
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->this$0:Landroid/net/ConnectivityModuleConnector;

    .line 3
    invoke-static {p1}, Landroid/net/ConnectivityModuleConnector;->-$$Nest$mlogi(Landroid/net/ConnectivityModuleConnector;)V

    .line 6
    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mModuleServiceCallback:Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;

    .line 8
    invoke-interface {p0, p2}, Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;->onModuleServiceConnected(Landroid/os/IBinder;)V

    .line 11
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->this$0:Landroid/net/ConnectivityModuleConnector;

    .line 3
    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;->mPackageName:Ljava/lang/String;

    .line 5
    invoke-static {p1, p0}, Landroid/net/ConnectivityModuleConnector;->-$$Nest$mmaybeCrashWithTerribleFailure(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;)V

    .line 8
    return-void
.end method
