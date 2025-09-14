.class public final Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->component:Landroid/content/ComponentName;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "CoverManager_StateNotifier"

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
    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

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
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/sepunion/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    .line 37
    .line 38
    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method
