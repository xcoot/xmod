.class public final Lcom/android/server/emailksproxy/EmailKeystoreService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public volatile mConnectedAtLeastOnce:Z

.field public final synthetic val$q:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    .line 9
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    .line 3
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    .line 8
    const-string p1, "EmailKeystoreService"

    .line 10
    const-string v0, "Bind to keychain service happened"

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    if-eqz p2, :cond_0

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    .line 19
    invoke-static {p2}, Landroid/security/IKeyChainService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 31
    :cond_0
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method
