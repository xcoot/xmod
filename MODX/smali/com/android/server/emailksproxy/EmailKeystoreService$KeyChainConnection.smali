.class public final Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final context:Landroid/content/Context;

.field public final service:Landroid/security/IKeyChainService;

.field public final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/emailksproxy/EmailKeystoreService$1;Landroid/security/IKeyChainService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    .line 8
    iput-object p3, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    .line 10
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->context:Landroid/content/Context;

    .line 3
    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    return-void
.end method
