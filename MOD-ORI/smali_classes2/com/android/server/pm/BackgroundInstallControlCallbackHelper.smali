.class public final Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final FLAGGED_PACKAGE_NAME_KEY:Ljava/lang/String; = "packageName"

.field static final FLAGGED_USER_ID_KEY:Ljava/lang/String; = "userId"


# instance fields
.field final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const-string v2, "BackgroundInstallControlCallbackHelperBg"

    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    return-void
.end method
