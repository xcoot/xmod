.class public final Lcom/android/server/WiredAccessoryManager$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$1;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string/jumbo v0, "isBikeMode"

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    move p1, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p1, v1

    .line 26
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 31
    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Lcom/android/server/WiredAccessoryManager$2;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const-string p1, "WiredAccessoryManager"

    .line 40
    .line 41
    const-string v3, "Earphones are disabled in bike mode"

    .line 42
    .line 43
    invoke-static {p1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    const/4 p1, 0x3

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v2, p1, v1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 61
    .line 62
    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 63
    .line 64
    move v1, p1

    .line 65
    :cond_2
    :goto_1
    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 66
    .line 67
    const-string/jumbo v3, "h2w"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0, v1, p1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    .line 76
    .line 77
    iget-boolean p1, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    .line 78
    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    iput v1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 82
    .line 83
    :cond_3
    return-void
.end method
