.class public final Lcom/samsung/android/battauthmanager/BattAuthManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mWpcAuthenticator:Lcom/samsung/android/battauthmanager/WpcAuthenticator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BattAuthManager"

    .line 5
    .line 6
    const-string v1, "BattAuthManager start"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const-string v1, "isFirstBoot : "

    .line 12
    .line 13
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mWpcAuthenticator:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    new-instance v1, Landroid/os/HandlerThread;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-direct {v1, p1, v3}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/samsung/android/battauthmanager/BattAuthManager;->mWpcAuthenticator:Lcom/samsung/android/battauthmanager/WpcAuthenticator;

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    invoke-static {}, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->removeDigests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    const-string p1, "BattAuthManager error"

    .line 71
    .line 72
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_0
    :goto_0
    return-void
.end method
