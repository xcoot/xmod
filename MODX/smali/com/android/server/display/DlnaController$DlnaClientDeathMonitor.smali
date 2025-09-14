.class public final Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/display/DlnaController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DlnaController;Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    if-eqz p3, :cond_3

    .line 11
    const/4 p1, 0x1

    .line 12
    if-eq p3, p1, :cond_2

    .line 14
    const/4 p1, 0x2

    .line 15
    if-eq p3, p1, :cond_1

    .line 17
    const/4 p1, 0x3

    .line 18
    if-eq p3, p1, :cond_0

    .line 20
    const-string p1, "None"

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p1, "Music_chn"

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string p1, "Music"

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const-string p1, "Image"

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    const-string p1, "Video"

    .line 34
    :goto_0
    const-string p3, "DlnaClientDeathMonitor, playerType : "

    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    const-string p3, "DlnaController"

    .line 42
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p2, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    .line 47
    const/4 p1, 0x0

    .line 48
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->binderDied()V

    .line 55
    :goto_1
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "DlnaController"

    .line 3
    const-string v1, "binderDied"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/server/display/DlnaController$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/DlnaController;

    .line 10
    iget-object v0, v0, Lcom/android/server/display/DlnaController;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance v1, Lcom/android/server/display/DlnaController$2;

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, v2, p0}, Lcom/android/server/display/DlnaController$2;-><init>(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method
