.class public final Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBinding:Z

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mIntent:Landroid/content/Intent;

.field public final mLock:Ljava/lang/Object;

.field public mService:Landroid/os/IBinder;

.field public final mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

.field public final mUserId:I

.field public final mVerbose:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;-><init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mServiceConnection:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iput p4, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mUserId:I

    .line 26
    .line 27
    iput-boolean p3, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    .line 28
    .line 29
    new-instance p1, Landroid/content/Intent;

    .line 30
    .line 31
    const-string p3, "android.service.systemcaptions.SystemCaptionsManagerService"

    .line 32
    .line 33
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mIntent:Landroid/content/Intent;

    .line 41
    .line 42
    new-instance p1, Landroid/os/Handler;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    return-void
.end method
