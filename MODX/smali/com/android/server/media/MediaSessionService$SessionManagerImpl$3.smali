.class public final Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field public final synthetic val$asSystemService:Z

.field public final synthetic val$direction:I

.field public final synthetic val$flags:I

.field public final synthetic val$opPackageName:Ljava/lang/String;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$pid:I

.field public final synthetic val$suggestedStream:I

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    .line 8
    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$opPackageName:Ljava/lang/String;

    .line 10
    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    .line 12
    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$pid:I

    .line 14
    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    .line 16
    iput p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    .line 18
    iput p8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    .line 20
    iput-object p9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$packageName:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 7
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 9
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 18
    move-result v1

    .line 19
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 22
    move-result v2

    .line 23
    :goto_0
    move-object v7, v0

    .line 24
    move v8, v1

    .line 25
    move v9, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$opPackageName:Ljava/lang/String;

    .line 29
    iget v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    .line 31
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$pid:I

    .line 33
    goto :goto_0

    .line 34
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .line 36
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 38
    iget-object v3, v0, Lcom/android/server/media/MediaSessionService;->mAudioManager:Landroid/media/AudioManager;

    .line 40
    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    .line 42
    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    .line 44
    iget v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    .line 46
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 53
    move-result-object v0

    .line 54
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 56
    invoke-virtual/range {v3 .. v10}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    const-string v2, "Cannot adjust volume: direction="

    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$direction:I

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, ", suggestedStream="

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$suggestedStream:I

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v2, ", flags="

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$flags:I

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v2, ", packageName="

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$packageName:Ljava/lang/String;

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v2, ", uid="

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$uid:I

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v2, ", asSystemService="

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;->val$asSystemService:Z

    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    const-string v1, "MediaSessionService"

    .line 129
    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :goto_2
    return-void
.end method
