.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "android:receive_sandbox_trigger_audio"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class p2, Landroid/app/AppOpsManager;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/app/AppOpsManager;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 22
    .line 23
    iget-object p2, p2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p2

    .line 26
    :try_start_0
    const-string v0, "android:receive_sandbox_trigger_audio"

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 31
    .line 32
    iget v2, v1, Landroid/media/permission/Identity;->uid:I

    .line 33
    .line 34
    iget-object v1, v1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v2, v1}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v0, 0x2

    .line 41
    if-ne p1, v0, :cond_0

    .line 42
    .line 43
    const-string p1, "HotwordDetectionConnection"

    .line 44
    .line 45
    const-string v0, "Shutdown hotword detection service on voice activation op disabled."

    .line 46
    .line 47
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->safelyShutdownHotwordDetectionOnVoiceActivationDisabledLocked()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit p2

    .line 59
    goto :goto_2

    .line 60
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0

    .line 62
    :cond_1
    :goto_2
    return-void
.end method
