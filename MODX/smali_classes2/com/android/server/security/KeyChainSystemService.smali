.class public final Lcom/android/server/security/KeyChainSystemService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageReceiver:Lcom/android/server/security/KeyChainSystemService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/security/KeyChainSystemService$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/security/KeyChainSystemService$1;-><init>(Lcom/android/server/security/KeyChainSystemService;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/security/KeyChainSystemService;->mPackageReceiver:Lcom/android/server/security/KeyChainSystemService$1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 6

    .line 1
    new-instance v3, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 4
    .line 5
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "package"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/server/security/KeyChainSystemService;->mPackageReceiver:Lcom/android/server/security/KeyChainSystemService$1;

    .line 19
    .line 20
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    const-string v0, "KeyChainSystemService"

    .line 30
    .line 31
    const-string v1, "Unable to register for package removed broadcast"

    .line 32
    .line 33
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method
