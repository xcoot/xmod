.class public final Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

.field public final token:Landroid/os/IBinder;

.field public final type:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "CoverManager_NfcLedCoverController"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "binderDied : binder = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public final onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    .line 2
    .line 3
    const-string v0, "CoverManager_NfcLedCoverController"

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "null listener received TouchReject!"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string p1, "Failed onSystemCoverEvent callback"

    .line 26
    .line 27
    invoke-static {v0, p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
